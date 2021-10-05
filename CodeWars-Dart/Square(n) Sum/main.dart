// Complete the square sum function so that it squares each number
// passed into it and then sums the results together.

// For example, for [1, 2, 2] it should return 9 because
// 1^2 + 2^2 + 2^2 = 9.

main(List<String> args) {
  // SOLUTION 1
  int squareSum(List numbers) {
    List<num> numbersFinal = [];
    numbers.forEach((number) => numbersFinal.add(number * number));
    return numbersFinal.fold(0, (dynamic a, dynamic b) => (a + b));
  }

  print(squareSum([1, 2])); // 5
  print(squareSum([0, 3, 4, 5])); // 50

  // SOLUTION 2
  int squareSum2(List<num> numbers) =>
      numbers.fold(0, (dynamic a, dynamic b) => a + b * b);

  print(squareSum2([1, 2])); // 5
  print(squareSum2([0, 3, 4, 5])); // 50
}
