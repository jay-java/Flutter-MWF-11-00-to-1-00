
import 'dart:io';

void fun1(){
  print('without para without return type');
}
void fun2(int i,double d,String name){
  print('without return type with para : i = $i d = $d name = $name');
}
String fun3(){
  print('with return type without para ');
  return 'dart';
}

int fun4(int num){
  print('number coming from main fun is : $num');
  return num*num;
}

void main(List<String> args) {
  print('Main function');
  fun1();
  fun2(13, 463.3543, 'dart');
  String res = fun3();
  print('res  = $res from function 3');

  print('enter number to get square : ');
  int num = int.parse(stdin.readLineSync()!);
  int sq =  fun4(num);
  print('square of $num is $sq');
}