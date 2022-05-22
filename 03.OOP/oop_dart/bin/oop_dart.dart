import 'package:oop_dart/Encapsulation/User.dart';

void main(List<String> arguments) {
  var newUser = new User2("Phong", "phong", "phong");
  newUser._username2 = "ABC"; // legal
  newUser._hashPassword2();

  var newUser1 = new User("Phong1", "admin1", "pass1");
  //newUser1._username = "ABc"; //cannot
}

class User2 {
  String name2; // đây là thành phần public
  String _username2; // đây là thành phần private
  String _password2;

  User2(this.name2, this._username2, this._password2);

  void _hashPassword2() {
    print("password2 hashed >.<");
  }
}
/**
 * Dart có 2 phạm vi truy cập dữ liệu là public và private. 
 * Để chỉ thị một thành phần là private, sử dụng kí tự gạch dưới "_" trước thành phần đó.
 */

/**
 * Dart privacy level chỉ ở mức thư viện, 
 * nghĩa là tất cả các hàm, hay lớp khác có thể truy cập dến mọi thành phần của class hiện tại, 
 * dù cho thành phần đó có được đánh dáu là private hay không. 
 */
