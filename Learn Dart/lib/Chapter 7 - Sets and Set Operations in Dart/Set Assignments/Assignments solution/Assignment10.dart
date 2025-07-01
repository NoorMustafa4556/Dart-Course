// Write a Dart program to generate a power set of a given set. Take a set as input and display all possible subsets of the set, including the empty set.

// If you didn't understant the assignment question then read the requirements given below

/*

  To solve the given assignment question, you need to write a Dart program that generates the power set of a given set. Here's an explanation of what needs to be done:

  1. Input: The program should take a set as input from the user. This set will be referred to as the "input set".

  2. Power Set Generation: The power set of a set is the collection of all possible subsets of that set. It includes the empty set and all combinations of elements from the original set.

  3. Empty Set: The power set should include the empty set, as it is a valid subset of any set.

  4. Subsets: You need to generate all possible subsets of the input set. Each subset can be considered as a separate set containing a combination of elements from the original set.

  5. Display Result: After generating the power set, you should display all the subsets to the user.

  To generate the power set, you can utilize different approaches such as recursive or iterative algorithms. The key idea is to systematically generate all possible combinations of elements from the original set, including the empty set.

  Once you have a clear understanding of the requirements, you can proceed to implement the Dart code to take the input set, generate the power set, and display all the subsets to the user.


*/

import 'dart:io';

void main(List<String> args) {
  //take the length of your set

  stdout.write("enter the lenth of your set:");

  //store the length of set into your variable (a)

  int a = int.parse(stdin.readLineSync()!);
  //initializing the variable for counting the elements in the set

  //initializing the empty set

  Set<int> mySet = {};

  //for loop for storing the elements in the set one by one
  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //adding the elements in the set one by one

    mySet.add(n);
  }
  //simply printing your set

  print("your list is :${mySet}");
}
