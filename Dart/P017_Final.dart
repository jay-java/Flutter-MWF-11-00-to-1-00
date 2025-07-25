final class QQ{
  final int i  = 1;
  final void change(){
    // i++;
    print('i = $i');
  }
}
class AQ extends QQ{
  void change(){
    // i++;
    print('change in AQ class');
  }
}
void main(List<String> args) {
  QQ q = new QQ();
  q.change();
}