class Parent {
  String? fatherName;
  String? motherName;

  Parent() {
    this.fatherName = "anonymous";
    this.motherName = "anonynousMother";
    print("This is default constructor from Parent class");
  }
//error when name's constructor is Parent
  Parent.ParameterizedCon(String fatherName, String motherName) {
    this.fatherName = fatherName;
    this.motherName = motherName;
    print("This is Parameterized constructor from Parent class");
  }

  void printMyName() {
    print(
        "This is method from Parent class: ${this.fatherName} + ${this.motherName}");
  }
}
