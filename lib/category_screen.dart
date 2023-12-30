import 'package:flutter/material.dart';
import 'home.dart';

class Categories extends StatelessWidget {
  final CardItem item;
  const Categories({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: const Color(0xff673ab7),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Image.network(item.urlImage),
                ),
                Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Center(
            child: Container(
              height: 170,
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 300,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff5e35b1).withOpacity(0.3),
                              blurRadius: 6.0,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 5,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: const Color(0xff5e35b1).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1625395005224-0fce68a3cdc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 170,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pizza",
                            style: TextStyle(
                              color: Color(0xff5e35b1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Italian Chees and Beef",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Divider(
                            color: Color(0xff5e35b1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 170,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("4.5"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 300,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("\$20"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Container(
              height: 170,
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 300,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff5e35b1).withOpacity(0.3),
                              blurRadius: 6.0,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 5,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: const Color(0xff5e35b1).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1606502281004-f86cf1282af5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 170,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Special Mini Pizza",
                            style: TextStyle(
                              color: Color(0xff5e35b1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "American Pizza",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Divider(
                            color: Color(0xff5e35b1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 170,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("4.5"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 300,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("\$9.99"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Container(
              height: 167,
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 300,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff5e35b1).withOpacity(0.3),
                              blurRadius: 6.0,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 5,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: const Color(0xff5e35b1).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1628840042765-356cda07504e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 170,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Paparoni Pizza",
                            style: TextStyle(
                              color: Color(0xff5e35b1),
                              fontSize:23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Maxcan Pizza",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                            ),
                          ),
                          Divider(
                            color: Color(0xff5e35b1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 170,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                            ),
                          ),
                          Text("4.5"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 300,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                            ),
                          ),
                          Text("\$17.50"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Container(
              height: 170,
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 300,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff5e35b1).withOpacity(0.3),
                              blurRadius: 6.0,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6,
                    left: 5,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: const Color(0xff5e35b1).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1585828922344-85c9daa264b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=640&q=80"),
                            )),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 170,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Mashroom Pizza",
                            style: TextStyle(
                              color: Color(0xff5e35b1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "European Pizza",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Divider(
                            color: Color(0xff5e35b1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 170,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("4.5"),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 300,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
                          ),
                          Text("\$15.99"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}