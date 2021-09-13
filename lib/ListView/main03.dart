/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-08 22:55:08
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
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.network(
              "https://static.wikia.nocookie.net/snacks/images/2/2c/Lay%E2%80%99s_Chips_2019_Logo.png/revision/latest/smart/width/53/height/53?cb=20200212021347"),
          title: Text(
            "花呗拉2",
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Text("我来自来的法拉利PLA "),
          trailing: Image.network(
              "https://static.wikia.nocookie.net/snacks/images/2/2c/Lay%E2%80%99s_Chips_2019_Logo.png/revision/latest/smart/width/53/height/53?cb=20200212021347"),
        ),
        ListTile(
          leading: Icon(Icons.arrow_back_ios_sharp),
          title: Text("花呗拉拉地方阿拉代理费"),
          subtitle: Text("我来自来的法拉利PLA "),
        ),
        ListTile(
          leading: Icon(Icons.sailing_outlined),
          title: Text("花呗拉拉地方阿拉代理费"),
          subtitle: Text("我来自来的法拉利PLA "),
        ),
        ListTile(
          leading: Icon(Icons.sledding),
          title: Text("花呗拉拉地方阿拉代理费"),
          subtitle: Text("我来自来的法拉利PLA "),
        ),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text("花呗拉拉地方阿拉代理费"),
          subtitle: Text("我来自来的法拉利PLA "),
        )
      ],
    );
  }
}
