import 'package:oop_dart/oop_dart.dart' as oop_dart;
import 'package:oop_dart/person.dart';

void main(List<String> arguments) {
  // print('Hello world: ${oop_dart.calculate()}!');
  var newPerson = new Person.parameterizedContructorOnlyFullName("Hung DD");
  print("name: ${newPerson.name}");
  print("fullname: ${newPerson.fullName}");
  newPerson.doSomething();
}
