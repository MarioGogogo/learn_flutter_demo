/*
 * @Author: MarioGo
 * @Date: 2021-09-04 00:00:49
 * @LastEditTime: 2021-09-28 22:44:00
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /flutter_app/lib/main copy 3.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'ListView/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(title: Text("FlutterDemo")), body: LayoutDemo()));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
        width: 400,
        color: Colors.pink[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconContainer(Icons.home_sharp),
            IconContainer(Icons.message, color: Colors.orange),
            IconContainer(Icons.app_blocking, color: Colors.blue)
          ],
        ));
  }
}

class IconContainer extends StatelessWidget {
  //构造函数
  //这里根视频上教的不一样  是代码更新了 之前方法会报错
  double size = 32;
  IconData icon;
  Color color = Colors.red;
  //函数里必须写默认值
  IconContainer(this.icon, {this.color = Colors.red, this.size = 32});

  @override
  Widget build(BuildContext context) {
    // DefaultTextStyle(
    //   style: TextStyle(color: Colors.red, fontSize: 20.0),
    // );
    print('这里是打断点的地方拉');
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
