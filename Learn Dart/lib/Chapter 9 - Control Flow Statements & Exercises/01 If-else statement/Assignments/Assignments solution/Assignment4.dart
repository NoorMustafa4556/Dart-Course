// Menu Selection:

// Develop a Dart program that presents a menu of different food items to the user. Ask the user to make a selection by entering the corresponding number. Use if-else if statements to display the appropriate message based on the user's choice.
import 'dart:io';

void main() {
  print("your menu list");
  print("1.burger");
  print("2.pizza");
  print("3.sandwitch");
  print("4.pasta");
  // your choice
  print("enter a number of your choice (1 to 4)");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("you select burger");
  } else if (choice == 2) {
    print('you select  pizza');
  } else if (choice == 3) {
    print("you select  sandwitch");
  } else if (choice == 4) {
    print("you select pasta");
  } else {
    print("invalid choice");
  }
}
