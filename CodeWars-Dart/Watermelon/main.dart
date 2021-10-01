main(List<String> args) {
  // CODE 1
  bool divide(int w) => w == 2 ? false : (w.remainder(2) == 0 ? true : false);

  print(divide(2)); // false
  print(divide(3)); // false
  print(divide(8)); // true

  // CODE 2
  bool divide2(int w) => w > 2 && w.isEven;

  print(divide2(2)); // false
  print(divide2(3)); // false
  print(divide2(8)); // true
}
