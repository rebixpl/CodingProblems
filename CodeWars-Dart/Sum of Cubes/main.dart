// Write a function that takes a positive integer n, sums all the
// cubed values from 1 to n, and returns that sum.

// Assume that the input n will always be a positive integer.

// Examples: (Input --> output)

// 2 --> 9 (sum of the cubes of 1 and 2 is 1 + 8)
// 3 --> 36 (sum of the cubes of 1, 2, and 3 is 1 + 8 + 27)

main(List<String> args) {
  int sumCubes(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) sum += i * i * i;
    return sum;
  }

  print(sumCubes(4)); // 100
  print(sumCubes(10)); // 3025
}
