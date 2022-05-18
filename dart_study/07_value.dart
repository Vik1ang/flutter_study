main() {
  var name;
  name ??= "lilei";
  print(name);

  var name1;
  var temp = name1 ?? "lilei11";
  print(temp);

  var p = Person()
    ..name = "why"
    ..eat()
    ..run();
}

class Person {
  late String name;

  void run() {
    print("running");
  }

  void eat() {
    print("eat");
  }
}
