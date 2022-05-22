import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础Widget"),
      ),
      body: HYHomeContent(),
    );
  }
}

class HYHomeContent extends StatefulWidget {
  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "Hello World", style: TextStyle(color: Colors.red)),
      TextSpan(text: "Hello Flutter", style: TextStyle(color: Colors.green)),
      WidgetSpan(child: Icon(Icons.favorite)),
      TextSpan(text: "Hello dart", style: TextStyle(color: Colors.blue))
    ]));
  }
}
