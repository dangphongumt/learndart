import 'dart:io';

main() {
  print("--------- This is for practice about Dart!!!----------");
  int defaultNumber = 1;
  do {
    switch (defaultNumber) {
      case 1:
        {
          print("00.Exit");
          print('01.Menu');
          print("02.String");
          break;
        }
      case 2:
        {
          forString();
          break;
        }
      case 3:
        {
          String? name = null;
          print('Nhap vao ten cua ban: ');
          String? ten = stdin.readLineSync();
          bai1(ten, tuoi);
          break;
        }
      default:
        break;
    }
    print("-------------------");
    print("Nhap vao (1): ");
    print("-------------------");
    String? number = stdin.readLineSync();
    defaultNumber = int.parse(number!);
  } while (defaultNumber != 0);
}

//bai 1. viet chuong trinh hoi ten va tuoi, in ra man hinh con bao nhieu nam nua thi nguoi do mung tho 100 tuoi
bai1(String ten, int tuoi) {
  print("Xin chao $ten");
  print(
      "Con ${100 - tuoi} nam nua se den sinh nhat 100 tuoi cua ban nhe, than men!!!");
}

//Các cú pháp cơ bản về string
forString() {
  print("AB'C");
  print("AB\"C");
  String str1 = "Dang Thanh ";
  String str2 = 'Phong';
  String str3 = str1 + str2;
  print("Result: $str3");
  String str4 = "Minh thuan 4 $str3";
  print(str4);
  print("Result: ${4 + 10}");
  String str5 = 'Hom nay' +
      'an gi'
          "vay";
  print(str5);
  var multilineString = """This is a 
multiline string
consisting of 
multiple lines""";
  print(multilineString);
}

//cú pháp cơ bản về input
inputName() {
  print("Enter your name: ");
  String? name =
      stdin.readLineSync(); //chưa tìm hiểu được dấu hỏi ở đây để làm gì

  print("Hello, $name \n Welcome to my practice!!1");
}
