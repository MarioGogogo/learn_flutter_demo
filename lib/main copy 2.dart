/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-28 19:57:11
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /flutter_app/lib/main copy 2.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text("FlutterDemo")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: ClipOval(
              child: Image.asset(
        "images/bear.jpg",
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ))),
    );
  }
}
