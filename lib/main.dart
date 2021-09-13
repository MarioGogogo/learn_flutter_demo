/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-13 22:41:14
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /flutter_app/lib/main.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'ListView/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text("FlutterDemo")), body: LayoutHome()));
  }
}

class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      //pading 父级第一层
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        // 子集第一层
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          //子集list中 每一个 加入padding组件
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/6.png',
                fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
