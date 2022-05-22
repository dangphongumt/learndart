class PersonStatic {
  static int nPersons = 0;
  int? age;
  /*Có 2 loại method:
    ### Phương thức của instance:

      - Là các phương thức được khai báo không có từ khóa `static` ở trước.
      - Các phương thức này có thể truy cập vào các thuộc tính và phương thức khác của instance

  ### Phương thức của class

      - Là phương thức được khai báo có từ khóa `static` ở trước.
      - Các phương thức này chỉ có thể truy cập vào các thuộc tính và phương thức static của lớp mà không được truy cập vào phương thức hay thuộc tính của instance.
   */

  //phương thức của class (có từ khóa STATIC)
  static void incN() {
    PersonStatic.nPersons++;
  }

  static void testClassMethod() {
    print("-----------Test class method");
    //PersonStatic.age; error in compiler
  }

  String name = "unknown";

  PersonStatic(String name) {
    PersonStatic.incN();
    this.name = name;
  }

  PersonStatic.onlyAge(int age) {
    this.age = age;
    PersonStatic.testClassMethod();
  }
}
