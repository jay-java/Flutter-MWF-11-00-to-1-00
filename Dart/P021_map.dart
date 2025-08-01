void main(List<String> args) {
  Map map ={
    1: 'c',
    2: 'c++',
    'java':3,
    'dart':4,
    345.34:'kotlin',
    false : 'python',
    1:'php'
  };

  print(map);

  map.forEach((key, value) {
    print('key : $key');
    print('value : $value');
  },);
}