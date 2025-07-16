import 'dart:io';

void main(List<String> args) {
  
  for(int i=1;i<=5;i++){
    for(int j=1;j<=3;j++){
      stdout.write('*');
    }
    print('');
  }

  print('');
  
  for(int i=1;i<=7;i++){
    for(int j=1;j<=i;j++){
      stdout.write('*');
    }
    print('');
  }


  print('');
  
  for(int i=1;i<=5;i++){
    for(int j=1;j<=i;j++){
      stdout.write('$j');
    }
    print('');
  }

    print('');
  
  for(int i=1;i<=5;i++){
    for(int j=1;j<=i;j++){
      stdout.write('$i');
    }
    print('');
  }

  print('');
  
  for(int i=1;i<=5;i++){
    for(int s = 4;s>=i;s--){
      stdout.write(' ');
    }
    for(int j=1;j<=i;j++){
      stdout.write('* ');
    }
    print('');
  }

    print('');

  for(int i=1;i<=5;i++){
    for(int s = 1;s<=i-1;s++){
      stdout.write(' ');
    }
    for(int j=5;j>=i;j--){
      stdout.write('* ');
    }
    print('');
  }


}