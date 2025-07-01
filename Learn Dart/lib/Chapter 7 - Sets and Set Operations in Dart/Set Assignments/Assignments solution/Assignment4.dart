// Write a Dart program to remove duplicate elements from a list using a set. Take a list of integers as input and display the list with duplicate elements removed.

import 'dart:io';

void main(List<String> args) {
  //declaring the list

  List list = [1, 2, 3, 3, 4, 4, 5];

  //print the list

  print("your list is :${list}");

  //print the list after removing the duplicate elements from the list

  print("your remaining list is after duplication :${list.toSet()}");

  //take the length of your list

  stdout.write("enter the lenth of your list:");

  //store the length of list into your variable (a)

  int a = int.parse(stdin.readLineSync()!);

  //initializing the empty list

  List<int> myList = [];

  //for loop for storing the elements in the list one by one

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //adding the elements in the list one by one

    myList.add(n);
  }
  //simply printing your list

  print("your list is :${myList}");

  //after removing the duplicate elements from the list your list is

  print("your list of unique elements is :${myList.toSet()}");
}
