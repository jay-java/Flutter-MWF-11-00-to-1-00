void main(List<String> args) {
  Set set ={12,'dart',345.345,false,3456457,12};
  print(set);

  set.forEach(
    (e){
      print(e);
      }
  );

  for(var i in set){
    print(i);
  }
}