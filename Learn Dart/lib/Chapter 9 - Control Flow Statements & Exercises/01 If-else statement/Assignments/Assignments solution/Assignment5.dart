// Ticket Pricing:

// Create a Dart program for a cinema that calculates ticket prices based on the age of the customer. Prompt the user to enter their age and then use if-else if statements to determine the ticket price based on different age brackets (e.g., children, adults, seniors).

import 'dart:io';

void main(List<String> args) {
  print("enter your category :");
  String category = stdin.readLineSync()!;
  print("enter your age :");
  int age = int.parse(stdin.readLineSync()!);
  if (category == "children") {
    if (age >= 0 && age < 18) {
      print("your ticket price for cinema is:Rs.30");
    }
  } else if (category == "adult") {
    if (18 >= age && age <= 40) {
      print("your ticket price for cinema is:Rs.50");
    }
  } else if (category == "seniors") {
    if (41 >= age && age <= 70) {
      print("your ticket price for cinema is : Rs.100");
    }
  } else {
    print("your are out of category we do'nt have any ticket for you !");
  }
}
