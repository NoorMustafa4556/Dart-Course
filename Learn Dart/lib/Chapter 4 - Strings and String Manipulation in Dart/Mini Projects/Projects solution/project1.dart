/*
    
  This Mini Project focuses specifically on the topics of operators and expressions, strings, string manipulation, and string formatting:

  Project Topic: String Encryption
  
  Write a program that takes a string as input and encrypts it using a simple encryption algorithm. The encryption algorithm works as follows:

  1. Replace each character in the string with its corresponding ASCII value.
  2. Reverse the resulting string.
  3. Add a special character '#' at the beginning and end of the reversed string.
  
  Example:
  Input: "Hello"
  Output: "#111#101#108#108#111#"

  Requirements:

  1. Implement the encryption algorithm using operators and expressions.
  
  2. Perform string manipulation to convert characters to their ASCII values and reverse the string.
  
  3. Use string formatting to add the special character '#' at the beginning and end of the reversed string.
  
  4. This exercise will help you practice using operators and expressions to perform calculations, string manipulation to transform and reverse strings, and string formatting to achieve a specific output format.

*/

import 'dart:io';

void main(List<String> args) {
  //asking the user to enter a string

  stdout.write("enter your string :");

  //store the strig in variable name

  String name = stdin.readLineSync()!;

  //storing the reverse string in this variable

  String result = "";
  String string = "";

//for loop for treversing the above string reversely

  for (int i = name.length - 1; i >= 0; i--) {
    //store each element in the variable result

    result += name[i];
  }
  //codeunits to find the codeuints of each elements in the string

  var codeunits = result.codeUnits;

  //for loop for adding the special symbol in the string before and after

  for (int i = 0; i < codeunits.length - 1; i++) {
    //adding # symbol at first of each elemnts of string

    string += "#";

    string += codeunits[i].toString();
  }
  //adding # symbol at the end of string

  String finalString = string + "#";

//printing your final

  print(finalString);
}
