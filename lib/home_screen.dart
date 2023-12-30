import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketExample extends StatefulWidget {
  @override
  _SocketExampleState createState() => _SocketExampleState();
}

class _SocketExampleState extends State<SocketExample> {
  final String serverUrl = 'https://your_socket_server_url';
  late io.Socket socket;
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    socket = io.io(serverUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket.connect();
    socket.onConnect((_) {
      print('Connected to the socket server');
    });
    socket.onDisconnect((_) {
      print('Disconnected from the socket server');
    });
    socket.on('message', (data) {
      setState(() {
        messages.add(data);
      });
    });
  }
  void sendMessage() {
    String message = messageController.text;
    if (message.isNotEmpty) {
      socket.emit('chatMessage', message);
      messageController.clear();
    }
  }
  @override
  void dispose() {
    socket.disconnect();
    socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Socket.IO Chat Example'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    messages[index],
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
