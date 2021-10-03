// Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:
// h = 0
// m = 1
// s = 1

// result = 61000

main(List<String> args) {
  // SOLUTION 1
  int past(int h, int m, int s) {
    int timeSinceMidnight = 0;
    timeSinceMidnight += s * 1000;
    timeSinceMidnight += m * 60000;
    timeSinceMidnight += h * 3600000;
    return timeSinceMidnight;
  }

  print(past(0, 1, 1));

  // SOLUTION 2
  int past2(int h, int m, int s) =>
      Duration(hours: h, minutes: m, seconds: s).inMilliseconds;

  print(past2(0, 1, 1));
}
