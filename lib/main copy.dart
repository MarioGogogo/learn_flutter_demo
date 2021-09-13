import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/part02/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/', //首页
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {"new_page": (context) => NewRoute()},
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("打开提示页"),
        onPressed: () {
          Navigator.pushNamed(context, "new_page",
              arguments: {"name": "jack", "age": 100});
        },
      ),
    );
  }
}

// 新路由
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context)?.settings.arguments;
    //todo:如何取对象值
    return Scaffold(
      appBar: AppBar(
        title: Text('新路由测试'),
      ),
      body: Center(
        child: Text("命名函数传参,$args"),
      ),
    );
  }
}
