// Set Operations Calculator:

// Create a Dart program that acts as a set operations calculator. Allow the user to input two sets as comma-separated values and perform various set operations such as union, intersection, and difference. Display the results in the console.

// hint to solve this problem

// 1. Prompt the user to enter two sets as comma-separated values (e.g., 1,2,3).
// 2. Parse the input sets and perform set operations such as union, intersection, and difference.
// 3. Display the results of the set operations in the console.
import 'dart:io';

void main(List<String> args) {

  //creating two empty sets

  Set<int> setA = {};
  Set<int> setB = {};

  //ask user to enter elememts

  print("enter elements for setA:");

  // for loop for adding element in set A

  for (int i = 1; i <= 5; i++) {

    int Avalue = int.parse(stdin.readLineSync()!);

    //adding one by one

    setA.add(Avalue);
  }
  //ask user to enter elements

  print("enter elememts for setB:");

  // for loop for adding elements in set B

  for (int i = 1; i <= 5; i++) {

    int Bvalue = int.parse(stdin.readLineSync()!);

    //adding elememt one by one

    setB.add(Bvalue);

  }
//simply print set A and set B

  print("Set A: $setA");
  print("Set B: $setB");

  // Perform set operations

  Set<int> unionSet = setA.union(setB);
  Set<int> intersectionSet = setA.intersection(setB);

  Set<int> differenceSet = setA.difference(setB);
  //print the result


  print("Union of sets: $unionSet");
  print("Intersection of sets: $intersectionSet");
  print("Difference of sets: $differenceSet");
  
}
