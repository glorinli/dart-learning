main() {
  // List
  var list = [1, 2, 3];
  list.add(888);
  print("list length is ${list.length}\nlist is: ${list.toString()}");

  var evenList = list.where((num) => num % 2 == 0);
  print("Even numbers ==>");
  evenList.forEach((num) => print("I am an even num: $num"));

  var animals = {"Cat", "Dog", "Duck"};

  print("Now comes animals--->");
  animals.forEach((item) {
    print("I am an animal: $item");
  });

  Function fun = (dynamic item) {
    print("I am handling item: $item");
  };

  list.forEach(fun);
}
