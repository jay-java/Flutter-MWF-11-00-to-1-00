import 'dart:io';

void main(List<String> args) {
  
  //1.Arithmetic -> +,-,*,/,%
  print('enter a = ');
  int a= int.parse(stdin.readLineSync()!);

  print('enter b = ');
  int b= int.parse(stdin.readLineSync()!);

  int c = a+b;

  print('c = $c'); 

int c1 = a-b;
print(c1);
int c2 = a*b;
print(c2);
int c3 = a~/b;
print(c3);
int c4 = a%b;
  print(c4);




  //2.Assignment -> =, +=,-=,*=,/=

  int i = 12;
  i+=14; // i = i+14
  print(i);

  //3.conditional -> >,<,>=,<=,!=,==

  //4.Logical -> &&,||,!

  //5.Unary -> ++,--

  int j = 1;
  j++;//2
  print('j = $j');

  int k = j++;//3.
  print('k = $k');

  


}