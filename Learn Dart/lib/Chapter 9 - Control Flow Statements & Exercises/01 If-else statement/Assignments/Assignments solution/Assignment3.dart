// Temperature Converter:

// Write a Dart program that asks the user to enter a temperature in either Celsius or Fahrenheit. Based on the user's choice, convert the temperature to the other unit and display the converted value. Use if-else if statements to handle the different conversion formulas.
import 'dart:io';

void main(List<String> args) {
  stdout.write(
      "enter a number that you want to convert either in celsius or fahrenheit:");
  double number = double.parse(stdin.readLineSync()!);
  print("what's  your choice either in celsius or fahrenheit:");
  String userInput = stdin.readLineSync()!;
  if (userInput == "celsius") {
    double temprature = (number * 9 / 5) + 32;
    print("your temprature in celsius is ${temprature}");
  } else if (userInput == "fahrenheit") {
    double temprature = (number - 32) * 5 / 9;
    print("your temprature in fahrenheit is ${temprature}");
  } else {
    print("invalid choice!");
  }
}
