class Student{
  Student(){
    print('student defualt cons');
  }
  Student.integertCons(int i){
    print('student named cons : $i');
  }
   Student.stringtCons(String i){
    print('student named cons : $i');
  }
  
  void call(){
    print('call in student');
  }
}
void main(List<String> args) {
  Student s = new Student.integertCons(12);
  s.call();

  Student s1 = new Student.stringtCons('dart');
}