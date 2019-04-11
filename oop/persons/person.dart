import 'mixins.dart';

class Person with Walker {
  String _name;

  Person(String name) {
    _name = name;
  }

  String getName() => _name;

  void setName(String name) {
    _name = name;
  }

  Person operator +(Person p) => Person("Baby of $_name and ${p._name}");

  @override
  noSuchMethod(Invocation invocation) {
    print("Don\'t let me do it because I do not known how to ${invocation.memberName}");
  }
}

class Student extends Person {
  String _school;
  String grade;

  Student(String name, String school) : super(name) {
    _school = school;
  }

  String getSchool() => _school;
}

class Teacher extends Person {
  String level;

  Teacher(String name, this.level) : super(name);

  Teacher.professor(String name) : super(name) {
    level = "professor";
  }
}