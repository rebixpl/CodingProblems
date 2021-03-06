// You are given an odd-length array of integers, in which all of them are the same, except for one single number.

// Complete the method which accepts such an array, and returns that single different number.

// The input array will always be valid! (odd-length >= 3)

// Examples
// [1, 1, 2] ==> 2
// [17, 17, 3, 17, 17, 17, 17] ==> 3

main(List<String> args) {
  // SOLUTION 1
  int stray(numbers) => numbers.fold(0, (a, b) => a ^ b);

  print(stray([17, 17, 3, 17, 17, 17, 17]));

  // SOLUTION 2
  int stray2(List<int> numbers) {
    numbers.sort();
    return numbers[0] == numbers[1] ? numbers.last : numbers.first;
  }

  print(stray2([17, 17, 3, 17, 17, 17, 17]));
}
