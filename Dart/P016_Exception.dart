import 'dart:io';

class Calculate{ //A
  void division() {
    print('enter a = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter b = ');
    int b = int.parse(stdin.readLineSync()!);
    if(a > 0 && b > 0){
      int c = a~/b;
      print('c = $c');
    }
    else{
      throw new IntegerDivisionByZeroException();
    }
  }
}
void main(List<String> args){ //B
  // Calculate c = new Calculate();
  // try{
  //   c.division();
  // }
  // on IntegerDivisionByZeroException{
  //    print('number cannot divide by zero');
  // }







  try{
    print('enter a = ');
    int a = int.parse(stdin.readLineSync()!);
    print('enter b = ');
    int b = int.parse(stdin.readLineSync()!);
    int c = a~/b;
    print('c = $c');
    exit(12);
  }
  on IntegerDivisionByZeroException{
    print('number cannot divide by zero');
  }
  on FormatException{
    print('denominator should be nyumeric value');
  }
  catch(e){
    print(e);
  }
  finally{
    print('this will executes everytime');
  }
 
}