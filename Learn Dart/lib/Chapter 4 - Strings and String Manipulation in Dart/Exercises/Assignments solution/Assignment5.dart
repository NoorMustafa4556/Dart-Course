// chapter no.4
// assignment no.4

// Write a program that takes a sentence as input and converts it to title case. Title case means that the first letter of each word should be capitalized, while the remaining letters should be in lowercase. Consider words to be separated by spaces.

import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your string:");
  String name = stdin.readLineSync()!;
  List splitname = name.split(" ");
  String title = "";

  for (int i = 0; i <= splitname.length - 1; i++) {
    String result = splitname[i];
    if (result.isNotEmpty) {
      String upperC =
          result[0].toUpperCase() + result.substring(1).toLowerCase();
      title += upperC;
      if (i < splitname.length - 1) {
        title += ' ';
      }
    }
  }
  print(title);
}
