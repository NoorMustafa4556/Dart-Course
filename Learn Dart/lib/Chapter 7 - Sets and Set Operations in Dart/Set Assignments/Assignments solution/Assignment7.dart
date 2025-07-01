// Write a Dart program to find the maximum and minimum elements in a set. Take a set of integers as input and display the maximum and minimum values.
import 'dart:io';

void main(List<String> args) {
//taking length of a set

  stdout.write("enter the length of a set: ");

  int a = int.parse(stdin.readLineSync()!);

  //initializing an empty set

  Set<int> set = {};

  //print this message before the adding element in a set

  print("enter element of set one by one:");

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

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
}
