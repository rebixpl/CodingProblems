// Count the number of divisors of a positive integer n.

// Random tests go up to n = 500000.

main(List<String> args) {
  // SOULTION 1
  int divisors(int n) {
    int counter = 0;
    for (int i = 1; i <= n; i++) {
      if (n.remainder(i) == 0) counter++;
    }
    return counter;
  }

  print(divisors(1)); // 1
  print(divisors(10)); // 4

  // SOLUTION 2
}
