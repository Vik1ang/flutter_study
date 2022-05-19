import 'package:flutter/material.dart';

main() {
  // 1. runApp函数
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: const Center(
            child: Text(
          "Hello World",
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ))),
  ));
}
