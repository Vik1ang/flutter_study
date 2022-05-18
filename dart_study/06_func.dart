main(List<String> args) {
  print(sum(20, 30));
  sayHello2("name", 1, 2);
  sayHello3("name", age: 20, height: 30);
  test(bar);

  test(() => print("arrow"));
}

int sum(int num1, int num2) {
  return num1 + num2;
}

void sayHello1(String name) {
  print(name);
}

void sayHello2(String name, [int age, double height]) {}

void sayHello3(String name, {int age,  double height}) {}

void test(Function foo) {
  foo();
}

void bar() {
  print("bar");
}
