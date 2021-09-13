/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-08 23:44:45
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
  // 自定义方法获取数据
  List<Widget> _getList() {
    var list = <Widget>[];
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("循环列表$i+++"),
      ));
    }
    return list; //[...]

    // return [
    //   ListTile(title: Text("循环列表1")),
    //   ListTile(title: Text("循环列表2")),
    //   ListTile(title: Text("循环列表3")),
    //   ListTile(title: Text("循环列表4")),
    //   ListTile(title: Text("循环列表5"))
    // ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getList(),
    );
  }
}
