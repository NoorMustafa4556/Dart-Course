/*

  THis Projects that you can work on to practice operators, expressions, strings, string manipulation, and string formatting in Dart:

  Mini Project 3: Email Validation
  
  Write a program that takes an email address as input and validates whether it is in a correct email format. Check for the presence of the "@" symbol, proper placement of the symbol, and a valid domain name. Print a message indicating whether the email address is valid or not.

  Requirements:

  1. Use operators and expressions to check for the presence and placement of the "@" symbol.
  
  2. Perform string manipulation to extract the domain name and validate it.
  
  3. Use string formatting to display the result indicating whether the email address is valid or not.


  This projects will provide you with practical exercises to apply your knowledge of operators, expressions, strings, string manipulation, and string formatting in Dart. They will help reinforce your understanding of these concepts and enhance your programming skills.


*/
import 'dart:io';

void main(List<String> args) {
  //asking the user to enter the email address
  stdout.write("enter your email address :");
  //store the email address in the variable email
  String email = stdin.readLineSync()!;
  //condition to check if @ is presant in the email
  if (email.contains("@")) {
    print("your this email address $email is valid ");
  } else {
    print("your email address is not valid");
  }
}
