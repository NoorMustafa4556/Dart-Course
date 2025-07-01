// Write a Dart program to perform set operations. Create three sets with different elements and display the union, intersection, and difference of the sets.

import 'dart:io';

void main(List<String> args) {

  //creating three empty sets

  Set<int> setA = {};
  Set<int> setB = {};
  Set<int> setC = {};

  //ask user to add elememts in the 
  
  print("enter your elements for setA:");

  // for loop for adding the elements in the setA

  for (int i = 1; i <= 5; i++) {

    int Avalue = int.parse(stdin.readLineSync()!);

    setA.add(Avalue);
  }
  //ask user to add elements in setB

  print("enter your elememts for setB:");


  // for loop for adding elements in the setB


  for (int i = 1; i <= 5; i++) {

    int Bvalue = int.parse(stdin.readLineSync()!);

    setB.add(Bvalue);
  }

//ask user to enter the elements in the setC

  print("enter the elements in the setC:");

  //for loop for adding elements in setC

  for (int i = 1; i <= 5; i++) {

    int Cvalue = int.parse(stdin.readLineSync()!);

    setC.add(Cvalue);
  }

//print the all sets

  print("Set A: $setA");
  print("Set B: $setB");
  print("Set C: $setC");

  // Perform set operations

  Set<int> unionSet = setA.union(setB).union(setC);

  Set<int> intersectionSet = setA.intersection(setB).intersection(setC);

  Set<int> differenceSet = setA.difference(setB).difference(setC);

//simply print the resultant output

  print("Union of sets (A U B): $unionSet");

  print("Intersection of sets (∩): $intersectionSet");
  
  print("Difference of sets (A-B-C): $differenceSet");

}
