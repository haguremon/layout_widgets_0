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
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10),
            height: 100.0,
            width: 100,
            color: Colors.teal,
            child: const Center(
              child: Text(
                'Container center',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
