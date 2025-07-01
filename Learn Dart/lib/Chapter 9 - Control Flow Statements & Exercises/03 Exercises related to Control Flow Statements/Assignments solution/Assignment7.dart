// Palindrome Checker: Develop a Dart program that asks the user to enter a word or phrase and determines whether it is a palindrome (reads the same forwards and backwards). Use control flow statements and string manipulation to compare the characters of the word or phrase.
import 'dart:io';

void main(List<String> args) {
  //ask user to enter any word

  stdout.write("enter a word :");

  String word = stdin.readLineSync()!;

  //initializing the empty variable to store the reverse word

  String checkPalindrome = '';

  //for loop for treversing over the word that you enter

  for (int i = word.length - 1; i >= 0; i--) {
    //adding each and every letter in checkPalindrome variable

    checkPalindrome += word[i];
  }

  //condition if the both variables contains have same word

  if (checkPalindrome == word) {
    print('your this word "${word}" is palindrome ');
  } else {
    print('your this word "${word}" is not  palindrome ');
  }
}
