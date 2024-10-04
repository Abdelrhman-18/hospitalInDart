abstract class Person {
  late String _name;
  late int _age;

  Person(this._name, this._age);

  void set_name(String name) {
    if (name.isNotEmpty) {
      this._name = name;
    } else {
      print("Please enter a valid name");
    }
  }

  String get_name() => _name;

  void set_age(int age) {
    if (age >= 0) {
      this._age = age;
    } else {
      print("Please enter a positive number");
    }
  }

  int get_age() => _age;

  void disPlayInFo();
}
