// Set Password Generator:

// Create a console-based password generator that generates unique and strong passwords using sets of characters. Ask the user for the desired password length and the character sets to be included (e.g., uppercase letters, lowercase letters, numbers, special characters). Generate and display a unique password in the console.

// hint

// 1. Ask the user to specify the desired password length and the character sets to include (e.g., uppercase letters, lowercase letters, numbers, special characters).

// 2. Generate a unique and strong password using the specified criteria.

// 3. Display the generated password in the console.
import 'dart:io';

void main() {
  //ask user to enter the length of password
  print("Enter the length of the password:");
  // store length into the variabe length
  int length = int.parse(stdin.readLineSync()!);
//print message to enter the password
  print("Enter the characters to include in the password:");
  //store password in the characters variable
  String characters = stdin.readLineSync()!;
  //split characters
  List myList = characters.split("");
  //shuffle characters
  myList.shuffle();
  //join the the shuffle character
  String result = myList.join("");
  //print the length of character that you enter
  print("your lenth of password is:${length}");
  //print your final password

  print("youe final password is:${result}");
}
