main(List<String> args) {
  var tong = 1.2;
  var a = 12;
  // tong = mySum(a, tong);
  print("Tong la: ${tong}");

  print("Hieu la ${myTru(a, tong)}");
}

// int mySum(int a, var b){
//   //return a + b;
// }

myTru(int a, var b) =>
    a - b; //hàm mũi tên => expr là tốc ký cho { return expr;}