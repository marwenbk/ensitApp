import 'package:flutter/material.dart';

import '../widgets/articleItem.dart';

class Home extends StatelessWidget {
  void printPressed() {
    print('pressed');
  }

  void click() {
    printPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is the title'),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: ListView(children: [
        ArticleItem(),
        ArticleItem(),
        ArticleItem(),
      ]),
    );
  }
}
