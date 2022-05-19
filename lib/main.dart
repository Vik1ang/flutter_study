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
          title: Center(
            child: Text("商品列表"),
          ),
        ),
        body: HYHomeContent());
  }
}

class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HYHomeProductItem("Apple1", "Macbook1",
            "https://img0.baidu.com/it/u=2698024750,2260552493&fm=253&fmt=auto&app=120&f=JPEG?w=641&h=401"),
        HYHomeProductItem("Apple2", "Macbook2",
            "https://img0.baidu.com/it/u=2698024750,2260552493&fm=253&fmt=auto&app=120&f=JPEG?w=641&h=401"),
        HYHomeProductItem("Apple3", "Macbook3",
            "https://img0.baidu.com/it/u=2698024750,2260552493&fm=253&fmt=auto&app=120&f=JPEG?w=641&h=401"),
      ],
    );
  }
}

class HYHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  final style1 = const TextStyle(fontSize: 25, color: Colors.orange);
  final style2 = const TextStyle(fontSize: 20, color: Colors.green);

  HYHomeProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(border: Border.all(width: 5, color: Colors.black)),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: style1,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(desc, style: style2),
          const SizedBox(
            height: 8,
          ),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
