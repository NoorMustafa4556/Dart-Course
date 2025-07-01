// Write a Dart program to find the common elements between two sets. Take two sets as input from the user and display the common elements.

import 'dart:io';

void main(List<String> args) {
  //taking length of first set

  stdout.write("enter the length of first set: ");

  int a = int.parse(stdin.readLineSync()!);

  //taking the length of second set

  stdout.write("enter the length of second set:");

  int b = int.parse(stdin.readLineSync()!);

  //initializing first empty set

  Set set1 = {};

  //initializing second empty se

  Set set2 = {};

  //print this message before the adding element in first set

  print("enter element of set1 one by one:");

  //for loop for adding the elements in the first set

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //add element in first set one by one

    set1.add(n);
  }
  //print this message before the adding element in the second set

  print("enter element of set2 one by one :");

  //for loop for adding the elements in the second set

  for (int i = 0; i < b; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //adding the elements in the second set one by one

    set2.add(n);
  }

  //print the message before displaying the both sets

  print("your both sets are :");

  print(set1);

  print(set2);
//finding the same element in the both sets

  Set resultantSet = set1.intersection(set2);

  //print the resultant set that contains the same elements

  print("the same element in set1 and set2 are: ${resultantSet}");
}
