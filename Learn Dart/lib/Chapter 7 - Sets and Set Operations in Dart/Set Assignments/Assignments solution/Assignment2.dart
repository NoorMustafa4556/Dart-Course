// Write a function in Dart that takes a list as input and returns a set with unique elements. Test the function with different lists to verify its functionality.

import 'dart:io';

void main(List<String> args) {
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

  //converting your list into unique set

  Set mySet = myList.toSet();

  //printing your resultant set

  print("your unique set is :${mySet}");
}
