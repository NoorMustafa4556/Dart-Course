// Number Pattern: Write a Dart program that generates the following number pattern:

// 1
// 22
// 333
// 4444
// 55555

// Use nested loops and control flow statements to generate and display the pattern.
import 'dart:io';

void main(List<String> args) {
  //for loop for printing our given pattern
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i");
    }
    print("");
  }
}
