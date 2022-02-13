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
        backgroundColor: Colors.teal,
        //Containerは制約がないと大きくなりすぎる
        body: SafeArea(
          child: Center(
              //Columnを使うことによって子ウィジェットを縦に並べて表示する事ができる
              child: Row(
            //mainAxisAlignmentはchildrenの配置についてかな　MainAxisSize.minだと全く意味ない
            // mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.start, //デフォ
            mainAxisSize:
                MainAxisSize.min, //column自体が小さくなる //デフォMainAxisSize.max
            //verticalDirection: VerticalDirection.up,//VerticalDirection.upすると物理的に画面を逆転したみたいになる
            //crossAxisAlignmentを使って交差する軸を揃える
            //crossAxisAlignment: CrossAxisAlignment.stretch,//stretchは中点で揃える

            children: [
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 48, 117, 173),
                child: const Center(
                  child: Text(
                    'Container0 center',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 56, 47),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Container1 center',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 186, 52, 43),
                child: const Center(
                  child: Text(
                    'Container2 center',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Container3 center',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
