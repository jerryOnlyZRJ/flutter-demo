// 引入flutter UI 库（Material 及 Cupertino）
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(
      wordPair.asPascalCase,
      style:
          TextStyle(fontSize: 25.0, color: Color.fromARGB(255, 255, 150, 150)),
    );
  }
}

// 动态组件（具有状态的组件） StatefulWidget/StatelessWidget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body:
            Container(child: new RandomWords(), padding: EdgeInsets.all(10.0)),
      ),
    );
  }
}
