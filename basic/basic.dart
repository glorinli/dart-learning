main() {
  print("Hello world");

  // Numbers
  var num1 = 10;
  var num2 = 11;
  print("Sum of $num1 and $num2 is ${num1 + num2}");

  // Dynamic
  dynamic d = 10;
  d = "Ok";
  print("This is a dynamic: $d");

  // Number parse
  var parsed = int.parse('333');
  assert(parsed == 333);

  // Runes 😀
  var runes = "\u{1f600}";
  print(runes);
}
