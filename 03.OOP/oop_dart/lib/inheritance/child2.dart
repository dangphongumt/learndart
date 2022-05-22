import 'package:oop_dart/inheritance/parent.dart';

/**
 * ## Kế thừa phân cấp
  Nhiều `class` con kế thừa cùng một `class` cha
 */
class Child2 extends Parent {
  String? something;
  @override //nếu không có sẽ warning?
  void printMyName() {
    print("This is method from Child2");
  }
}

/**
 * - `class` con chỉ kế thừa các thuộc tính và phương thức của `class` cha, không kế thừa constructor của `class` cha
  - Dart không hỗ trợ đa kế thừa
 */

