abstract class RBI{
  void interest();
  void HL();
}
class SBI extends RBI{
  @override
  void HL() {
    print('SBI HL : 6%');
  }

  @override
  void interest() {
    print('SBI saving interest : 7%');
  }

}
class HDFC extends RBI{
 @override
  void HL() {
    print('HDFC HL : 7%');
  }

  @override
  void interest() {
    print('HDFC saving interest : 8%');
  }

}
class DART extends RBI{
 @override
  void HL() {
    print('DART HL : 6.7%');
  }

  @override
  void interest() {
    print('DART saving interest : 7.8%');
  }

}
void main(List<String> args) {
  SBI s = new SBI();
  s.interest();
  s.HL();
  HDFC h = new HDFC();
  h.interest();
  h.HL();
  DART d = new DART();
  d.interest();
  d.HL();
}