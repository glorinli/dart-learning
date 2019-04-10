main() {
  String s = null;

  switch (s) {
    case "lala":
      print("I am $s");
      break;
  }

  // Exceptions
  try {
    throw Exception();
  } on Object catch (o, s) {
    print("Caught a thrown: $o");
    print("Stack trace: $s");
  }
}
