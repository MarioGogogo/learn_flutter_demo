/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-09 00:12:20
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
  //生成数据
  var list = <Widget>[];
  HomeContent() {
    print('会自动执行HomeContent');
    for (var i = 0; i < 20; i++) {
      this.list.add(ListTile(
            title: Text("循环列表$i+++❤️"),
          ));
    }
  }

  //抽离方法
  Widget _getListData(content, index) {
    return this.list[index];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: this._getListData, //这里只是方法的赋值  不能执行（）
      // itemBuilder: (context, index) {
      //   return this.list[index];
      // },
    );
  }
}
