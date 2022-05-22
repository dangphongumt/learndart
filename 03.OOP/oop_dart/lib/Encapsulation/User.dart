class User {
  String name; // đây là thành phần public
  String _username; // đây là thành phần private
  String _password;

  User(this.name, this._username, this._password);
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