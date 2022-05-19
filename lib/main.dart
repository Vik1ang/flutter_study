import 'package:flutter/material.dart';

main() {
  // 1. runApp函数
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HYHomePage());
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: HYContentBody());
  }
}

class HYContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HYContentBodyState();
  }
}

class HYContentBodyState extends State<HYContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
            value: flag,
            onChanged: (value) {
              setState((){
                flag = value!;
              });
            }),
        const Text(
          "同意协议",
          style: TextStyle(fontSize: 20),
        ),
      ],
    ));
  }
}
