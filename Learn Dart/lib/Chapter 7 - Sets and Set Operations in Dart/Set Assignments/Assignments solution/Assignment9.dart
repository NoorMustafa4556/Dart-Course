// Write a Dart program to check if two sets are disjoint (having no common elements). Take two sets as input from the user and display whether they are disjoint or not.

import 'dart:io';

void main(List<String> args) {
  //taking length of first set

  stdout.write("enter the length of first set: ");

  int a = int.parse(stdin.readLineSync()!);

  //taking the length of second set

  stdout.write("enter the length of second set:");

  int b = int.parse(stdin.readLineSync()!);

  //initializing first empty set

  Set<dynamic> set1 = {};

  //initializing second empty se

  Set<dynamic> set2 = {};

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

  print("your set1 is :");

  print(set1);
  print("your set1 is :");

  print(set2);
  //use intersection method for finding disjoint 
  var disjoint = set1.intersection(set2);
  //condition for finding disjoint 
  if (disjoint == true) {

    
    print('your sets are disjoint');

  } else {

    print('your sets not disjoint ');
    
  }
}
