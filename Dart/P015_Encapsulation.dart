class Employee{
  int? _id;
  String? _name;
  double? _salary;
  String? _address;
  Employee(){
    print('defualt cons');
  }
  Employee.para(int id,String name,double salary,String address){
    this._id = id;
    this._name = name;
    this._salary = salary;
    this._address = address;
  }
  void setId(int id){
    this._id  = id;
  }
  int? getId(){
    return _id;
  }
  void setName(String name){
    this._name = name;
  }
  String? getName(){
    return _name;
  }
  void setSalary(double salary){
    this._salary = salary;
  }
  double? getSalary(){
    return _salary;
  }
  void setAddress(String address){
    this._address = address;
  }
  String? getAddress(){
    return _address;
  }

  @override
  String toString() {
    return 'id : $_id name : $_name salary : $_salary address : $_address';
  }
}
void main(List<String> args) {
  Employee e1 = new Employee();
    e1.setId(2);
  // e1.id = 1;

  // e1.name = 'dart';
  // e1.salary = 3454.345;
  // e1.address = 'ahmedabad';

  print(e1.getId());

  e1.setName('DART');
  print(e1.getName());

  Employee e2 = new  Employee.para(2, 'JAVA', 457.546, 'delhi');
  print(e2);

}