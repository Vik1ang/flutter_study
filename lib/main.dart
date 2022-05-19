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

class HYContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "Hello World",
      style: TextStyle(fontSize: 30, color: Colors.orange),
    ));
  }
}
