/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-08 23:17:48
 * @LastEditors: MarioGo
 * @Description: 文件描述
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
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text("FlutterDemo")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.network(
            "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin.jpg"),
        Container(
          child: Text(
            "我是一个标题",
            style: TextStyle(fontSize: 30, color: Colors.pink[200]),
          ),
          height: 40,
        ),
        Image.network(
            "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin-002.jpg"),
        Container(
          child: Text(
            "我是一个标题",
            style: TextStyle(fontSize: 30, color: Colors.pink[200]),
          ),
          height: 40,
        ),
        Image.network(
            "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin-003.jpg"),
        Container(
          child: Text(
            "我是一个标题",
            style: TextStyle(fontSize: 30, color: Colors.pink[200]),
          ),
          height: 40,
        ),
        Image.network(
            "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin-004.jpg"),
        Container(
          child: Text(
            "我是一个标题",
            style: TextStyle(fontSize: 30, color: Colors.pink[200]),
          ),
          height: 40,
        ),
        Image.network(
            "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin-005.jpg"),
      ],
    );
  }
}
