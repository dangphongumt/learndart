import 'package:oop_dart/inheritance/child.dart';
import 'package:oop_dart/inheritance/child2.dart';
import 'package:oop_dart/inheritance/grandchild.dart';
import 'package:oop_dart/oop_dart.dart' as oop_dart;
import 'package:oop_dart/person.dart';
import 'package:oop_dart/personstatic.dart';

void main(List<String> arguments) {
  var child1 = new Child();
  var grandChild1 = new GrandChild("Phong");
  grandChild1.nameOfParentAndGrandparent();

  var child2Instance = new Child2();
  child1.printMyName(); //call method from parent
  child2Instance.printMyName();
}
