import 'package:flutter/material.dart';

class ArticleItem extends StatefulWidget {
  @override
  State<ArticleItem> createState() => _ArticleItemState();
}

class _ArticleItemState extends State<ArticleItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image(
                    image: NetworkImage(
                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpngimg.com%2Fuploads%2Fface%2Fface_PNG5645.png&f=1&nofb=1'),
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    'flan foulani',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text('Etudes')
            ],
          ),
          Text('Description fefefefefefefefeefefef'),
          Stack(
            children: [
              Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.m4YAsxE0dsdsfMveVbEqxAHaEK%26pid%3DApi&f=1'),
                height: 100,
                width: 150,
              ),
              Positioned(
                  child: IconButton(
                      icon: Icon(Icons.favorite),
                      padding: EdgeInsets.zero,
                      alignment: Alignment.topRight,
                      onPressed: () => setState(() {
                            isSelected = !isSelected;
                          }),
                      color: isSelected ? Colors.blue : Colors.black),

                  /// condition ? if true : if false
                  top: 0,
                  right: 10)
            ],
          ),
        ],
      ),
    );
  }
}
