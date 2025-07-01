// Write a Dart program to check if a given set is a subset or superset of another set. Take two sets as input from the user and display whether the first set is a subset, superset, or neither of the second set.

// If you didn't understant the assignment question then read the requirements given below

/*

  To solve the given assignment question, you need to write a Dart program that checks whether a given set is a subset or superset of another set. Here's an explanation of what needs to be done:

  1. Input: The program should take two sets as input from the user. These two sets will be referred to as Set A and Set B.

  2. Subset Check: You need to check if Set A is a subset of Set B. A set is considered a subset if all of its elements are present in the other set. In other words, every element of Set A should also be present in Set B.

  3. Superset Check: Similarly, you need to check if Set A is a superset of Set B. A set is considered a superset if it contains all the elements of the other set. In this case, all elements of Set B should also be present in Set A.

  4. Display Result: Based on the subset and superset checks, you should display the result to the user. There are three possible outcomes:

    4.1 If Set A is a subset of Set B, display a message indicating that Set A is a subset of Set B.
    4.2 If Set A is a superset of Set B, display a message indicating that Set A is a superset of Set B.
    4.3 If neither of the above conditions is true, display a message indicating that Set A is neither a subset nor a superset of Set B.
  
  
  Remember, sets in Dart are compared based on their elements, so you need to compare the elements of the sets to determine the subset or superset relationship.

  Once you have a clear understanding of the requirements, you can proceed to implement the Dart code to take input sets, perform the subset and superset checks, and display the appropriate messages based on the comparison results.

*/
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

  print("your set1 is :");

  print(set1);
  print("your set1 is :");

  print(set2);
  //checking conditions of subset and superset

  if (set1.containsAll(set2)) {
    //print the result if set2 is subset of set1

    print("set2 is a subset of set1 ");

    //also print the if set1 is super set of set2

    print("set1 is a superset of set2");
  } else {
    //printing the result given by else condition

    print("neither subset nor superset");
  }
}
