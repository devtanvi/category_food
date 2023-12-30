import 'package:flutter/material.dart';
import 'category_screen.dart';

class TopCard extends StatefulWidget {
  const TopCard({Key? key}) : super(key: key);

  @override
  State<TopCard> createState() => _TopCardState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String subTitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subTitle,
  });
}

Widget topCard({
  required CardItem item,
  required BuildContext context,
}) =>
    Container(
      width: 150,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 2 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Material(
                  child: Ink.image(
                    image: NetworkImage(item.urlImage),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Categories(
                            item: item,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            item.title,
            style: const TextStyle(
                color: Color(0xff5e35b1),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            item.subTitle,
            style: const TextStyle(
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );

class _TopCardState extends State<TopCard> {
// TOP CARD LIST VIEW STARTS HERE
  List<CardItem> items = const [
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1542834369-f10ebf06d3e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      title: 'PIZZA',
      subTitle: '\$20',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1621852004158-f3bc188ace2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      title: 'SANDWICH',
      subTitle: '\$7.99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1534938665420-4193effeacc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
      title: 'FRIES',
      subTitle: '\$2.99',
    ),
    CardItem(
      urlImage:
          'https://images.unsplash.com/photo-1585238341710-4d3ff484184d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=804&q=80',
      title: 'BURGER',
      subTitle: '\$5.99',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Food Category"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 4,
            itemBuilder: (context, index) => topCard(
              context: context,
              item: items[index],
            ),
          ),
        ));
  }
}
