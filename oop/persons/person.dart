class Person {
  String _name;

  Person(String name) {
    _name = name;
  }

  String getName() => _name;

  void setName(String name) {
    _name = name;
  }
}

class Student extends Person {
  String _school;

  Student(String name, String school) : super(name) {
    _school = school;
  }

  String getSchool() => _school;
}