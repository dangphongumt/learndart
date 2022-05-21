class Person {
  String? name;
  int? age;
  late String fullName;

  Person() {
    this.name = "anonymous";
    this.age = null;
    print("Default contructor fired!!!!!!!!!");
  }

  Person.parameterizedContructor(String name, int age) {
    this.name = name;
    this.age = age;
    print("parameterized contructor fired");
  }

  Person.parameterizedContructor2(String name, int age) {
    this.name = name;
    this.age = age;
    print("parameterized contructor fired");
  }
}
