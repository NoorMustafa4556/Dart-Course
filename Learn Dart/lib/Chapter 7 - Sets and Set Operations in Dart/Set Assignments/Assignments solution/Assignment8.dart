// Write a Dart program to count the number of occurrences of each element in a set. Take a set of elements as input and display a count of each unique element.

import 'dart:io';

void main(List<String> args) {
  //take the length of your set

  stdout.write("enter the lenth of your list:");

  //store the length of set into your variable (a)

  int a = int.parse(stdin.readLineSync()!);
  //initializing the variable for counting the elements in the set
  int count = 0;

  //initializing the empty set

  Set<int> mySet = {};

  //for loop for storing the elements in the set one by one
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //adding the elements in the set one by one

    mySet.add(n);
    count++;
  }
  //simply printing your set

  print("your list is :${mySet}");
  //print the total elements that you enter in the list
  print('your total elements in the set:${count}');
}
