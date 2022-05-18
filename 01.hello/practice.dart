import 'dart:io';

import 'dart:math';
import 'package:intl/intl.dart';

//https://o2.edu.vn/bai-tap-lap-trinh-dart/
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
          print("03.nhap ten va tuoi");
          print("04.Nhap vao so nguyen - tinh so chan le");
          print("05. In ra man hinh cac so nguyen duong < 100");
          print("06. Tim ra so duong lon nhat");
          print("07. kiem tra 2 so thuc co cung dau");
          print("08. doc so nguyen <1000 (have bug)");
          print("09.nhap vao so a (1 <= a <= 100)");
          print(
              "10.In ra man hinh boi so cua 7 va NOT boi so cua 5(10 <= a <= 100)");
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
          String? ten = stdin.readLineSync()!;
          print('Nhap tuoi cua ban: ');
          int tuoi = stdin.readIntSync();
          bai1(ten, tuoi);
          break;
        }
      case 4:
        {
          print("nhap vao so nguyen: ");
          int soNguyen = stdin.readIntSync();
          bai2(soNguyen);
          break;
        }
      case 5:
        {
          bai3();
          break;
        }
      case 6:
        {
          print("nhap vao so a: ");
          double a = stdin.readDoubleSync();
          print("nhap vao so b: ");
          double b = stdin.readDoubleSync();
          print("nhap vao so c: ");
          double c = stdin.readDoubleSync();
          print("${bai5(a, b, c)} la so duong lon nhat");
          break;
        }
      case 7:
        {
          print("nhap vao so a: ");
          double a = stdin.readDoubleSync();
          print("nhap vao so b: ");
          double b = stdin.readDoubleSync();
          bai6(a, b);
          break;
        }
      case 8:
        {
          print("nhap vao so a: ");
          int a = stdin.readIntSync();
          bai7(a);
          break;
        }
      case 9:
        {
          print("nhap vao so a (1 <= a <= 100): ");
          bai8();
          break;
        }
      case 10:
        {
          print("-----------------");
          bai9();
          break;
        }
      case 11:
        {
          print("-----------------");
          bai10();
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

//bai10 viết chương trình nhập ngày tháng năm. Hãy cho biết tháng đó bao nhiêu ngày
void bai10() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd - kk:mm')
}

//bai9. tim tat ca các so chia het cho 7 nhung khong phai boi so cua 5, nam trong doan 10 -> 100. Các số thu được sẽ in thành chuỗi trên một dòng, cách nhau bằng dấu phẩy.
void bai9() {
  for (int i = 10; i <= 100; i++) {
    if (i % 7 == 0 && i % 5 != 0) {
      stdout.write("$i,");
    }
  }
  print("");
}

//bai8. viet chương trình sinh ra một số ngẫu nhiên N từ 1 -> 100. Đề nghị người dùng đoán và nhập vào 1 số, in ra màn
// hình thông báo xem đoán đúng hay sai, lớn hay nhỏ hơn số N. Cho nhập thêm 2 lần nữa.
void bai8() {
  int input = stdin.readIntSync();
  if (input > 100 || input < 1) {
    print("Nhap vao so a: 1<=a<=100. please");
    return;
  }
  var rd = Random();
  int randomNumber = rd.nextInt(99) + 1;
  int count = 0;
  bool check = false;
  while (check == false && count < 3) {
    //the first input is start before, but have to go into while for print result
    check = checkNumber(randomNumber, input);
// print("check ${check}");
// print("count ${count}");

    if (check == false && count < 2) {
      print("nhap vao so a (1 <= a <= 100): ");
      input = stdin.readIntSync();
    }
    if (check == false && count == 2) {
      print("dap an dung la: $randomNumber");
    }
    count++;
  }
}

bool checkNumber(int defaultNumber, int input) {
  if (input == defaultNumber) {
    print("Ban da doan dung!");
    return true;
  } else if (input > defaultNumber) {
    print("Ban da doan LON hon dap an, hay doan lai ");
    return false;
  } else {
    print("Ban da doan NHO hon dap an, hay doan lai ");
    return false;
  }
}

//bai7. viet chuong trinh in ra cach doc cua so nguyen n cho truoc n<1000
void bai7(int input) {
  List<String> data = [
    'khong',
    'mot',
    'hai',
    'ba',
    'bon',
    'nam',
    'sau',
    'bay',
    'tam',
    'chin',
  ];
  List<String> data_hoa = [
    'Khong',
    'Mot',
    'Hai',
    'Ba',
    'Bon',
    'Nam',
    'Sau',
    'Bay',
    'Tam',
    'Chin'
  ];
  if (input % 100 == 0) {
    print('${data_hoa[input ~/ 100]} tram');
  } else if (input < 100 && input > 10) {
    print('${data_hoa[input]}');
  } else if (input % 10 != 0) {
    print(
        '${data_hoa[input ~/ 100]} tram ${data[(input - (input ~/ 100) * 100) ~/ 10]} muoi ${data[input % 10]}.');
  } else {
    print(
        '${data_hoa[input ~/ 100]} tram ${data[(input - (input ~/ 100) * 100)]} muoi.');
  }

  // String result = "";
  // List<String> data = [
  //   'khong',
  //   'mot',
  //   'hai',
  //   'ba',
  //   'bon',
  //   'nam',
  //   'sau',
  //   'bay',
  //   'tam',
  //   'chin',
  // ];

  // if (input > 999 || input < -999) {
  //   print("input lon hon 999 or -999");
  //   return;
  // }

  // if (input < 0) {
  //   result += 'am ';
  //   input = input.abs();
  // }
  // if (input >= 100) {
  //   result += data[input ~/ 100] + ' tram ';
  //   input = input % 100;
  // }
  // if (input >= 10) {
  //   result += data[input ~/ 10] + ' muoi ';
  //   input = input % 10;
  // }

  // if (input >= 0) {
  //   int kq = input % 10;
  //   result += data[kq];
  // }
  // print(result);
}

//bai6. kiem tra 2 so thuc co cung dau
void bai6(double a, double b) {
  if (a == 0 || b == 0) {
    print(" co so trung tinh");
    return;
  }
  if (a > 0) {
    if (b > 0) {
      print("cung dau duong");
      return;
    }
    print("khac dau");
  } else {
    if (b < 0) {
      print("cung dau am");
      return;
    }
    print('khac dau');
  }
  //if (a * b > 0)
}

extension ReadDoubleSyncOnStdin on Stdin {
  double readDoubleSync() => double.parse(this.readLineSync()!);
}

//bai 5. tim so lon nhat trong 3 so thuc
double bai5(double a, double b, double c) {
  if (a < b) {
    a = b;
  }
  if (a < c) {
    a = c;
  }
  return a;
}

//bai 3. in ra man hinh tat ca cac so nguyen duong le nho hon 100
void bai3() {
  for (int i = 0; i <= 100; i++) {
    if (i % 2 != 0) {
      stdout.write("$i -"); //print thi co endline
    }
  }
}

//bai2. viet chuong trinh nhap vao so nguyen, in ra man hinh so chan hay le
void bai2(int input) {
  if (input % 2 == 0) {
    print('$input la so chan');
  } else {
    print('$input la so LE');
  }
}

//extension method
extension ReadIntSyncOnStdin on Stdin {
  int readIntSync() => int.parse(this.readLineSync()!);
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
