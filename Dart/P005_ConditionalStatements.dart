import 'dart:io';

void main(List<String> args) {
  //1.if else
  print('enter a = ');
  int a = int.parse(stdin.readLineSync()!);
  if(a>0){
    print('a = $a');
  }
  else {
    print('a is < 0');
  }

  //2.nested if

  print('enter age = ');
  int age = int.parse(stdin.readLineSync()!);
  if(age > 18){
    if(age<55){
      print('you are eligigble');
    }
    else{
      print('age is greater than 18 b but not less than 55');
    }
  }
  else{
    print('age is less than 18');
  }
  //3.else if ladder

  print('ener marks = ');
  int m = int.parse(stdin.readLineSync()!);

  if(m<35){
    print('fail');
  }
  else if(m >=35 && m<=60){
    print('Pass class');
  }
  else if(m >=61 && m<=70){
    print('C class');
  }
  else if(m >=71 && m<=80){
    print('B class');
  }
  else if(m >=81 && m<=90){
    print('A class');
  }
  else if(m >=91 && m<=100){
    print('A+ class');
  }
  else{
    print('invalid input');
  }

  //4.switch

  print('enter your choice = ');
  int c = int.parse(stdin.readLineSync()!);

  switch(c){
    case 1: 
      print('you selected english');
      break;
    case 2:
      print('you selected hindi');
      break;
    case 3: 
      print('you selected gujarati');
      break;
    default: 
      print('invalid');
  }

}