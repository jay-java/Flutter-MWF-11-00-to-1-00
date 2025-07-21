class Parent{
  void callFun(){
    print('call fun in parent class');
  }
}
class Child extends Parent{
  void callFun(){
    super.callFun();
    print('call fun in child class');
  }
}
void main(List<String> args) {
  Child c = new Child();
  c.callFun();
  c.callFun();
}