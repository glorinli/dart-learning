import 'person.dart';

main() {
  var student1 = Student("Jose", "Universitas Amoiensis");
  student1.setName("Jose");

  print("I am student1, my name is ${student1.getName()}, grade: ${student1.grade}");

  var professor = Teacher.professor("Jack");
  print("I am a teacher, my level is ${professor.level}");

  professor.walk();

  dynamic baby = student1 + professor;
  print("I am ${baby.getName()}");

  baby.suicide();
}
