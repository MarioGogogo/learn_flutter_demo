/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-08 23:27:53
 * @LastEditors: MarioGo
 * @Description: 水平列表
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
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            color: Colors.orangeAccent,
            child: ListView(
              children: <Widget>[
                Image.network(
                    "https://img-pre.ivsky.com/img/tupian/pre/202102/10/zhenye_shulin-003.jpg"),
                Text("我是一个内嵌框文本"),
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.pink,
          ),
          Container(
            width: 180,
            color: Colors.black26,
          ),
          Container(
            width: 180,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
