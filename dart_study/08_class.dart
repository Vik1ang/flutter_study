main(){
  var p = Person.withNameAgeHeight("name", 1, 12);
}

class Person {
  String? name;
  int? age;
  late double? height;

  Person(this.name, this.age);

  Person.withNameAgeHeight(this.name, this.age, this.height);

  Person.fromMap(Map<String, dynamic> map){
   name = map["name"];
   age = map["age"];
   height = map["height"];
  }
}