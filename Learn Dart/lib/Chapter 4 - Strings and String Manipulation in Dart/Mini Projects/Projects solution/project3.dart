/*
  
  THis Projects that you can work on to practice operators, expressions, strings, string manipulation, and string formatting in Dart:

  Project 3: String Palindrome Tester
  
  Write a program that takes a string as input and checks if it is a palindrome. Ignore spaces, punctuation marks, and case sensitivity when determining if a string is a palindrome. Print the result indicating whether the input string is a palindrome or not.

  Requirements:

  1. Utilize operators and expressions to remove spaces and punctuation marks from the input string.
  
  2. Perform string manipulation to convert the string to lowercase and reverse it.
  
  3. Use string formatting to print the result indicating whether the input string is a palindrome or not.


  This project will provide you with practical exercises to apply your knowledge of operators, expressions, strings, string manipulation, and string formatting in Dart. They will help reinforce your understanding of these concepts and enhance your programming skills.

*/
import 'dart:io';

void main(List<String> args) {
  //ask user to enter a string
  stdout.write("enter your string:");
  //store the string into the varialbe
  String yourString = stdin.readLineSync()!;
  //initializing variable to store input string
  String myString = "";
  //for loop for iteratig over the string
  for (int i = yourString.length - 1; i >= 0; i--) {
    myString += yourString[i];
  }
  //condition of your string is palindrome
  if (myString == yourString) {
    print("your string is palindrome");
  } else {
    print("your string is not palindrome");
  }
}
