import 'person.dart';
class Patient extends Person{
  late String illness;
  Patient(super.name , super.age ,this.illness);
  void set_illness(String illness){
    this.illness=illness;
  }
  String get_illness(){
    return illness;
  }

  @override
  void disPlayInFo() {
    print("name is :${get_name()}");
    print("age is :${get_age()}");
    print("illness is : $illness");

  }}