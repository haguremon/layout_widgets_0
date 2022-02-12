import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//ホットリロードをやってみる
/* stlessを入力すると が補完される
class  extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
*/
//StatelessWidgetによってホットリードができるらしい
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        //Containerは制約がないと大きくなりすぎる
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
            height: 100.0,
            width: 100,
            color: Colors.teal,
            child: Center(child: Text('data')),
          ),
        ),
      ),
    );
  }
}
