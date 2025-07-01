//     You are given a list of students and their corresponding grades. Implement a Dart program that uses a map to store the student names as keys and their grades as values. The program should allow the user to enter a student's name and display their grade. If the student is not found, the program should display an appropriate error message.
import 'dart:io';

void main(List<String> args) {
  //asking the user to enter the name of a student

  stdout.write("enter the name of student:");

  //store the name into the variablw name

  String name = stdin.readLineSync()!;

  //create a map of the student list

  Map<String, int> myMap = {
    "arslan": 45,
    "sohail": 50,
    "asif": 60,
    "sheraz": 70,
  };
  //condition to check if name of student exists
  if (myMap.containsKey(name)) {
    print("the grade of this stdent is :${myMap[name]}");
    //if not then print any message
  } else {
    print("this stdent is not found in our student list");
  }
}
