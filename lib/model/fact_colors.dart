import 'dart:math';

class FactColors {
  var randomNumber = new Random();
  final List<String> _colors = [
     "39add1", // light blue
    "3079ab", // dark blue
    "c25975", // mauve
    "e15258", // red
    "f9845b", // orange
    "838cc7", // lavender
    "7d669e", // purple
    "53bbb4", // aqua
    "51b46d", // green
    "e0ab18", // mustard mm l
    "637a91", // dark gray
    "f092b0", // pink
    "b7c0c7"
  ];

  String getColor() {
    int index = randomNumber.nextInt(_colors.length);
    return _colors[index];
  }
}
