/*
 * @Author: MarioGo
 * @Date: 2021-09-05 11:39:09
 * @LastEditTime: 2021-09-05 21:32:26
 * @LastEditors: MarioGo
 * @Description: 入口文件
 * @FilePath: /flutter_app/lib/main.dart
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
        home: Scaffold(
            appBar: AppBar(title: Text("flutter demo")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          "你好",
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
