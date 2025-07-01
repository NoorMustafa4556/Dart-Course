// Set Analyzer:

// Build a Dart program that analyzes a set of numbers provided by the user. Ask the user to input a set of numbers and then perform analysis operations like finding the minimum, maximum, average, and sum of the set. Display the results in the console.

// hint

// 1. Prompt the user to input a set of numbers (e.g., 1 2 3).
// 2. Parse the input set of numbers and perform analysis operations such as finding the minimum, maximum, average, and sum of the set.
// 3. Display the results of the analysis operations in the console.

import 'dart:io';

void main(List<String> args) {
//taking length of a set

  stdout.write("enter the length of a set: ");

  int a = int.parse(stdin.readLineSync()!);

  //initializing an empty set

  Set<int> set = {};
  //initializing the variable count to count all the values in the set
  int count = 0;

  //print this message before the adding element in a set

  print("enter element of set one by one:");

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);
//counting all the values that enter by user
    count++;
    //adding the elements in the set one by one

    set.add(n);
  }
  //simply printing your set

  print("your set is :${set}");
  //converting set to list

  List myList = set.toList();

  //suppose the first elements is larger

  int max = myList[0];

  //for loop for treversing the whole list

  for (int i = 1; i < myList.length; i++) {
    //condition

    if (myList[i] > max) {
      max = myList[i];
    }
  }
  //print the maximum value

  print("the maximum value in a your is :${max}");

  //suppose first element is smaller

  int min = myList[0];

  //for loop for treversing over the whole list

  for (int i = 1; i < myList.length; i++) {
    //condition

    if (myList[i] < max) {
      max = myList[i];
    }
  }
  //print the minimum value

  print("the minimum value in your set is :${min}");

  //fold() method to take the sum of all the elements in the set

  num sum = set.fold(0, (previous, next) => previous + next);

  //finding the average

  var average = sum / count;

  //simply print average that we count

  print("the average all the elements in the set is:${average}");

  //simply printing the sum of all the elements in the set

  print("the sum of all the elements in the set is :${sum}");
}
