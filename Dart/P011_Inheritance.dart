class A{
  A(){
    print('defualt cons of  class');
  }
  void classA(){
    print('class A function');
  }
}
class B extends A{
  void classB(){
    print('class B function');
  }
}
class C extends B{
  void classC(){
    print('class C function');
  }
}
class D extends A{
  void classD(){
    print('class D function');
  }
}


void main(List<String> args) {
  B b = new B();
  b.classA();
  b.classB(); 

  C  c = new C();
  c.classA();
  c.classB();
  c.classC();


  D d = new D();
  d.classA();
  d.classD();
}