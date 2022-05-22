import 'package:oop_dart/inheritance/parent.dart';

/**
 *
💡 Đây là đơn kế thừa
***Dart không hỗ trợ đa kế thừa***

 */
class Child extends Parent {
  String? childName;

  Child() {
    this.childName = "anonymousChildName";
  }
  void printParent() {
    print("_____________________");
    print("This is method from child");
    print("Parent name: ${fatherName} ${motherName}");
  }
}
