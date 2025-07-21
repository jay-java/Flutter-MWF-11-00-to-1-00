class ABC{
  // static int a = 12;
  // void change(){
  //   a++;
  //   print('a = $a');
  // }
  int? rollno;
  String? name;
  double? per;
  static String cname = 'TOPS';
  void printDataa(){
    print('roll no : $rollno name : $name per : $per cname : $cname');
  }

  static void calling(){
    print('static calling in ABC class ');
  }
}
void main(List<String> args) {
  ABC a = new ABC();
  a.rollno =12;
  a.name = 'DART';
  a.per = 65.56;
  a.printDataa();

  ABC.calling();
}