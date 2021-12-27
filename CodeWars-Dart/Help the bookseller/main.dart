// A bookseller has lots of books classified in 26 categories labeled A, B, ... Z. Each book has a code c of 3, 4, 5 or more characters. The 1st character of a code is a capital letter which defines the book category.

// In the bookseller's stocklist each code c is followed by a space and by a positive integer n (int n >= 0) which indicates the quantity of books of this code in stock.

// For example an extract of a stocklist could be:

// L = {"ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"}.
// or
// L = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"] or ....
// You will be given a stocklist (e.g. : L) and a list of categories in capital letters e.g :

// M = {"A", "B", "C", "W"}
// or
// M = ["A", "B", "C", "W"] or ...
// and your task is to find all the books of L with codes belonging to each category of M and to sum their quantity according to each category.

// For the lists L and M of example you have to return the string (in Haskell/Clojure/Racket a list of pairs):

// (A : 20) - (B : 114) - (C : 50) - (W : 0)
// where A, B, C, W are the categories, 20 is the sum of the unique book of category A, 114 the sum corresponding to "BKWRK" and "BTSQZ", 50 corresponding to "CDXEF" and 0 to category 'W' since there are no code beginning with W.

// If L or M are empty return string is "" (Clojure and Racket should return an empty array/list instead).

// Note:
// In the result codes and their values are in the same order as in M.

var b = ["BBAR1 50", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"];
var c = ["A", "B", "C", "D"];

void main(List<String> args) {
  String stockSummary(List<String> lstOfArt, List<String> lstOf1stLetter) {
    if (lstOfArt.length == 0 || lstOf1stLetter.length == 0) return "";

    List<String> _list = [];

    _list = lstOf1stLetter.map((String letter) {
      final List<String> _lstOfBooksTemp = List.from(lstOfArt);

      lstOfArt.forEach((book) =>
          book.startsWith(letter) ? null : _lstOfBooksTemp.remove(book));

      if (_lstOfBooksTemp.isNotEmpty) {
        final _sum = _lstOfBooksTemp.map((book) {
          return int.parse(book.split(" ")[1]);
        }).fold(0, (int prev, int next) => prev + next);

        return "($letter : $_sum)";
      } else {
        return "($letter : 0)";
      }
    }).toList();

    return _list.join(" - ");
  }

  print(stockSummary(
      b, c)); // OUTPUT => (A : 0) - (B : 1190) - (C : 515) - (D : 600)
}

// void main(List<String> args) {
//   String stockSummary(List<String> lstOfArt, lstOf1stLetter) {
//     List<String> _resultsList = [];
//     List<String> _lstOf1stLetter = List.from(lstOf1stLetter);

//     lstOf1stLetter.forEach((stock_category) {
//       lstOfArt.forEach((book) {
//         if (book[0] == stock_category) {
//           _resultsList.add("($stock_category : ${book.split(" ")[1]})");
//           _lstOf1stLetter.remove(stock_category);
//         }
//       });
//     });

//     _lstOf1stLetter.isNotEmpty
//         ? _lstOf1stLetter.forEach((stock_category) {
//             _resultsList.add("($stock_category : 0)");
//           })
//         : null;

//     List<String> _sumSameCategories() {
//       List<String> _resultsListCache = List.from(_resultsList);

//       _resultsList.fold("", (category, category2) {
//         if (category.split(":")[0] == category2.split(":")[0]) {
//           print(category.split(":")[0]);
//           int _sum = int.parse(
//                   category.split(":")[1].replaceFirst(")", "").trim()) +
//               int.parse(category2.split(":")[1].replaceFirst(")", "").trim());
//           if (_resultsListCache.contains(category) ||
//               _resultsListCache.contains(category2)) {
//             _resultsListCache.remove(category);
//             print(category);
//             _resultsListCache.remove(category2);
//             print(category2);
//             _resultsListCache.add(
//                 "(${category.split(":")[0].replaceFirst("(", "").trim()} : $_sum)");
//           }
//         }
//       });

//       // print(_resultsList);
//       // _resultsList.forEach((category) {
//       //   _resultsList.forEach((category2) {

//       //   });
//       // });

//       return _resultsListCache;
//     }

//     _resultsList = _sumSameCategories();

//     return _resultsList.join(" - ");
//   }

//   print(stockSummary(b, c));
// }
