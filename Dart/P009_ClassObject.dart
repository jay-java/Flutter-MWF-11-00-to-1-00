import 'dart:async';

class Laptop{
  int? ram;
  String? model;
  double? price;
  void printData(){
    print('ram : $ram model : $model price : $price');
  }
}

void main(List<String> args) {
  Laptop l1 = new Laptop();
  l1.ram = 12;
  l1.model = 'dell';
  l1.price =35435.324;
  l1.ram = 16;

  l1.printData();
}