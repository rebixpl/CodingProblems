main(List<String> args) {
  // CODE 1
  num makeNegative(num n) => n.isNegative ? n : n * -1;

  print(makeNegative(-56));
  print(makeNegative(16));
  print(makeNegative(0));

  // CODE 2
  num makeNegative2(num n) => -n.abs();
  print(makeNegative2(-56));
  print(makeNegative2(16));
  print(makeNegative2(0));
}
