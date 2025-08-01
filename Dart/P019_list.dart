void main(List<String> args) {
  // <generics>
  List list = [12,'dart',345.345,false,3456457,12];
  print(list);
  list.add('hello users');

  print(list);
  list.insert(1, 12.34);
  print(list);

  list.forEach((element) {
    print(element);
  },);

  for(var i in list){
    print(i);
  }

  list.addAll([4356.456,565,'java',true,45.45]);
  print(list);




}