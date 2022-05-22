import 'package:oop_dart/inheritance/child.dart';

/**
 *  Kế thừa đa cấp
  `class` có thể kế thừa một `class`con khác
 */
class GrandChild extends Child {
  late String grandChildName;
  GrandChild(String name) {
    this.grandChildName = name;
    print("This is Parameterized constructor from grandchild class");
  }

  /**
   * Từ khóa super refer đến lớp cha của lớp hiện tại.
   *  super có thể dùng để gọi các phương thức hoặc thuộc tính của class cha.
   *  Khi một instance của class con được khởi tạo, một instance của class cha cũng sẽ được tạo ra ngầm định và super refer đến instance cha đó. 
   */
  void nameOfParentAndGrandparent() {
    print("Parent name - ${super.childName}");
    print("Grandparent name: ${super.fatherName} + ${super.motherName}");
  }

  /**
   * Lợi ích của `super`

- Truy cập đến các data member của class cha để phân biệt với data member của class con
- Tránh ghi đè lên phương thức của class cha
- Dùng để gọi các **parameterized constructor** của class cha
   */
}
