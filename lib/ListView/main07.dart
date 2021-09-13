/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-08 23:54:48
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
            appBar: AppBar(title: Text("FlutterDemo")), body: HomeContent()));
  }
}

class HomeContent extends StatelessWidget {
  // 自定义方法获取数据
  List<Widget> _getList() {
    var tempList = listData.map((value) {
      return ListTile(title: Text(value["title"]));
    });
    // ('123','2323','222)
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getList(),
    );
  }
}
