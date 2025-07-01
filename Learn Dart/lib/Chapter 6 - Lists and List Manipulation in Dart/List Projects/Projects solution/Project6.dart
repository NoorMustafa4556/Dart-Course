/*

  Project 6: Unique Numbers

  You are given a list of numbers. Implement the following tasks using Dart lists:

  1. Create a list called numbers with the numbers [5, 3, 9, 2, 5, 8, 2, 1].

  2. Create a new list called uniqueNumbers that contains only the unique numbers from the numbers list. Ensure that the order of numbers is maintained.

  3. Display the uniqueNumbers list to the user.

  4. Calculate and display the sum of all the numbers in the uniqueNumbers list.

  5. Sort the uniqueNumbers list in ascending order and display the sorted list.

  6. Find the largest and smallest numbers in the uniqueNumbers list and display them.


*/
void main(List<String> args) {
  //creating a list

  List<int> previousList = [5, 3, 9, 2, 5, 8, 2, 1];

  //making the list unique

  List uniqueList = previousList.toSet().toList();

  //simply printing the unique list

  print("YOUR UNIQUE LIST IS :${uniqueList}");

  //calculating the sum of this unique list

  num calculatSum = uniqueList.fold(0, (previous, next) => previous + next);

  //print the sum of this unique list

  print("THE SUM OF YOUR UNIQUE LIST IS :${calculatSum}");

  //sorting the unique list

  uniqueList.sort();

  //print the sorted unique list

  print("YOUR UNIQUE SORTED LIST IS :${uniqueList}");

  //finding the smallest  number in the unique list

  print("THE SMALLEST NUMBER IN THIS UNIQUE LIST IS :${uniqueList[0]}");

  //finding the largest number in the number

  print(
      "THE LARGEST NUMBER IN THE UNIQUE LIST IS :${uniqueList[uniqueList.length - 1]}");

  //printing the final list at the end

  print("THE FINAL LIST IS :${uniqueList}");
}
