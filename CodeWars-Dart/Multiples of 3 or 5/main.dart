// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

// Note: If the number is a multiple of both 3 and 5, only count it once.

void main(List<String> args) {
  int mysolution(int n) {
    int _sum = 0;
    for (int i = 1; i < n; i++) {
      if (i.remainder(3) == 0)
        _sum += i;
      else if (i.remainder(5) == 0) _sum += i;
    }
    return _sum;
  }

  int solution2(int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) sum += i % 3 == 0 || i % 5 == 0 ? i : 0;
    return sum;
  }

// TEST CASES
  print("\n mysolution \n");
  print(mysolution(10)); // 23
  print(mysolution(20)); // 78
  print(mysolution(200)); //9168
  print(mysolution(-16)); // 0
  print("\n solution2 \n");
  print(solution2(10)); // 23
  print(solution2(20)); // 78
  print(solution2(200)); //9168
  print(solution2(-16)); // 0
}
