import 'package:oop_dart/oop_dart.dart' as oop_dart;
import 'package:oop_dart/person.dart';
import 'package:oop_dart/personstatic.dart';

void main(List<String> arguments) {
  for (int i = 0; i < 10; i++) {
    var newPerson = PersonStatic("Phong ${i}");
    print(newPerson.name);
    print(
        "Numer of peple: ${PersonStatic.nPersons}"); //thuộc tính (property) STATIC nên thuộc về class, dùng chung cho toàn bộ các instance của class
  }

  var newPerson = PersonStatic.onlyAge(12);
}
