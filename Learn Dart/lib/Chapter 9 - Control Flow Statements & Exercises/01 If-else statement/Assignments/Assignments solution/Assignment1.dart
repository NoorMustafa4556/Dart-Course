// Grade Calculator:

// Write a Dart program that prompts the user to enter their marks for a particular subject. Based on the marks entered, display the corresponding grade using if-else if statements. For example, if the marks are between 90 and 100, the grade should be "A+", if the marks are between 80 and 89, the grade should be "A", and so on.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your marks to find your result:");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 90 && marks <= 100) {
    print("A+");
  } else if (marks >= 80 && marks < 89) {
    print("A");
  } else if (marks >= 70 && marks < 79) {
    print("B+");
  } else if (marks >= 60 && marks < 69) {
    print("B");
  } else if (marks >= 50 && marks < 59) {
    print("C");
  } else if (marks >= 33) {
    print("D");
  } else if (marks < 33) {
    print("shit! you are fail");
  } else {
    print("you enter invalid marks");
  }
}
