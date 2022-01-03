// Given a string "abc" and assuming that each letter in the string has a value equal to its position in the alphabet, our string will have a value of 1 + 2 + 3 = 6. This means that: a = 1, b = 2, c = 3 ....z = 26.

// You will be given a list of strings and your task will be to return the values of the strings as explained above multiplied by the position of that string in the list. For our purpose, position begins with 1.

// nameValue ["abc","abc abc"] should return [6,24] because of [ 6 * 1, 12 * 2 ]. Note how spaces are ignored.

// "abc" has a value of 6, while "abc abc" has a value of 12. Now, the value at position 1 is multiplied by 1 while the value at position 2 is multiplied by 2.

// Input will only contain lowercase characters and spaces.

// Good luck!

// If you like this Kata, please try:

void main(List<String> args) {
  List<int> wordValue(List<String> arr) {
    final List<String> alphabet = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];

    return arr.map((sentence) {
      List<String> words = sentence.split(" ");
      for (int i = 1; i <= words.length; i++) {
        print("$words");
        print("word: ${words[i - 1]}, index: $i");
      }

      return 9;
    }).toList();

    // return arr.map((sentence) {
    //   int total = 0;
    //   List<int> wordList = [];
    //   sentence.split(" ").forEach((word) {
    //     int wordValue = 0;
    //     word.split("").forEach((character) {
    //       if (character != " ") {
    //         wordValue += alphabet.indexOf(character) + 1;
    //       }
    //     });
    //     wordList.add(wordValue);
    //   });

    //   wordList.forEach((wordValue) {
    //     print("wordList: $wordList");
    //     print(
    //         "(wordList.indexOf(wordValue) + 1) = ${(wordList.indexOf(wordValue) + 1)}");
    //     print("wordValue: $wordValue");
    //     total += (wordList.indexOf(wordValue) + 1) * wordValue;
    //   });
    //   return total;
    // }).toList();
  }

// Test
  print(wordValue(["abc", "abc abc"])); // [6,24]
  print(wordValue(
      ["coding", "better pizza", "i got this too"])); // [52, 296, 471]
  print(wordValue([
    "y",
    "y y",
    "jebac disa",
    "y y y y y yy y y yy y y yy y y yyy y yy y yy y yy z"
  ])); //
}


// void main(List<String> args) {
//   List<int> wordValue(List<String> arr) {
//     final List<String> alphabet = [
//       'a',
//       'b',
//       'c',
//       'd',
//       'e',
//       'f',
//       'g',
//       'h',
//       'i',
//       'j',
//       'k',
//       'l',
//       'm',
//       'n',
//       'o',
//       'p',
//       'q',
//       'r',
//       's',
//       't',
//       'u',
//       'v',
//       'w',
//       'x',
//       'y',
//       'z'
//     ];

//     return arr.map((sentence) {
//       int total = 0;
//       List<int> wordList = [];
//       sentence.split(" ").forEach((word) {
//         int wordValue = 0;
//         word.split("").forEach((character) {
//           if (character != " ") {
//             wordValue += alphabet.indexOf(character) + 1;
//           }
//         });
//         wordList.add(wordValue);
//       });

//       wordList.forEach((wordValue) {
//         print("wordList: $wordList");
//         print(
//             "(wordList.indexOf(wordValue) + 1) = ${(wordList.indexOf(wordValue) + 1)}");
//         print("wordValue: $wordValue");
//         total += (wordList.indexOf(wordValue) + 1) * wordValue;
//       });
//       return total;
//     }).toList();
//   }

// // Test
//   print(wordValue(["abc", "abc abc"])); // [6,24]
//   print(wordValue(
//       ["coding", "better pizza", "i got this too"])); // [52, 296, 471]
//   print(wordValue([
//     "y",
//     "y y",
//     "jebac disa",
//     "y y y y y yy y y yy y y yy y y yyy y yy y yy y yy z"
//   ])); //
// }
