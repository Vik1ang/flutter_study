main(List<String> args) {
  // 1. 明确的声明
  String name = "why";

  // 2. 类型推导
  var age = 20;

  // 3. final
  final height = 1.88;

  // 4. const
  const address = "shenzhen";

  //
  const p1 = Person("why");
  const p2 = Person("why");
  const p3 = Person("w");
  print(identical(p1, p2));
  print(identical(p1, p3));

  // dynamic / Object
  
}

class Person {
  final String name;

  const Person(this.name);
}
