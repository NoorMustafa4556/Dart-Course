// Exercise 1: Palindrome Checker

// Write a program that takes a string as input and checks if it is a palindrome.

// A palindrome is a word, phrase, number, or other sequence of characters that reads the same backward as forward. Ignore spaces, punctuation, and capitalization when determining if a string is a palindrome.

import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your palindrome word that comes to your mind:");
  String palindrome = stdin.readLineSync()!;
  String string2 = "";
  for (int i = palindrome.length - 1; i >= 0; i--) {
    string2 += palindrome[i];
  }
  if (string2 == palindrome) {
    print(" $palindrome" " is palindrome.");
  } else {
    print("$palindrome" " is not palindrome.");
  }
}
