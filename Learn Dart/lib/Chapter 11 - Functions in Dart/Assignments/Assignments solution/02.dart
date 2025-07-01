// Create a function isPalindrome that takes a string as a parameter and checks whether it is a palindrome (reads the same forwards and backwards). Return true if it is a palindrome, and false otherwise.

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter your string: ");
  String string = stdin.readLineSync()!;

  // Check if the input string is a palindrome
  if (isPalindrome(string)) {
    print('Your string "$string" is a palindrome.');
  } else {
    print('Your string "$string" is not a palindrome.');
  }
}

// Function to check if a given string is a palindrome
bool isPalindrome(String myString) {
  // Create an empty string to store the reversed version of the input string
  String reversedString = '';

  // Iterate through the characters of the input string in reverse order
  for (int i = myString.length - 1; i >= 0; i--) {
    reversedString += myString[i];
  }

  // Check if the reversed string is equal to the original string
  return reversedString == myString;
}
