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

  Person.parameterizedContructorOnlyFullName(String fullName) {
    this.fullName = fullName;
    print("parameterized contructor fired");
  }

  void printNameAndFullName() {
    print("This is: ${this.name}${this.fullName}");
  }

  void doSomething() {
    print("This method is calling other method of the current instance");
    print("------------------------");
    printNameAndFullName();
    print("have this------------------------");
    this.printNameAndFullName();
  }
}
