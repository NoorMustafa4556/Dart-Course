/*

  Project 2: Shopping List

  You are creating a shopping list application. Implement the following tasks using Dart lists:

  1. Create an empty list called shoppingList.

  2. Prompt the user to enter five items one by one and add them to the shoppingList.

  3. Display the complete shoppingList to the user.

  4. Sort the shoppingList in alphabetical order and display the sorted list.

  5. Check if a specific item entered by the user exists in the shoppingList and display the result.

  6. Remove an item specified by the user from the shoppingList.

  7. Prompt the user to add a new item to the shoppingList and append it to the end.

  8. Display the final version of the shoppingList.

*/

import 'dart:io';

void main(List<String> args) {
  //Create an empty list called shoppinglist.
  List shoppingList = [];

  //asking user to enter the items in the list
  print("ENTER THE YOUR SHOPPING LIST:");

//prompt the user to enter the items in the shopping list one by one
  for (int i = 0; i < 5; i++) {
    String n = stdin.readLineSync()!;
    //adding in shopping list one by one
    shoppingList.add(n);
  }
  //print the list of all items

  print("YOUR SHOPPING LIST IS :${shoppingList}");
  //sorting the shopping list

  shoppingList.sort();
  print("YOUR SORTED SHOPPING LIST IS :${shoppingList}");
  //asking user to enter an item to for checking is this item exist
  //in this list

  print("ENTER YOUR ITEM TO CHECK IS THIS ITEM EXIST ");
  //store the item in this container item
  String item = stdin.readLineSync()!;
  //condition for checking that item exist in the shopping list

  if (shoppingList.contains(item)) {
    //print result if condition meets
    print("YOUR ITEM EXIST IN IN THE LIST ");
  } else {
    //print result if condition does not meet
    print(" YOUR THIS ITEM DOES NOT EXIST IN THE LIST");
  }
//asking your item that your want to delete
  print("ENTER YOUR ITEM THAT YOUR WANT TO DELETE: ");
  //store the delete item in the container deleteItem
  String deleteItm = stdin.readLineSync()!;
  //deleting the item from the shoppingList
  shoppingList.remove(deleteItm);
  //your remianing list will be
  print(
      "YOUR REMAINIG LIST AFTER DELETING THE SPECIFIC ELEMENT :${shoppingList}");

  //asking your item that you want to add
  print("ENTER YOUR ITEM THAT YOUR WANT TO ADD IN THIS LIST:");
  //store the adding  item in the container  addItem
  String addItm = stdin.readLineSync()!;
  //adding element in the list
  shoppingList.add(addItm);

  //printing your final list
  print("YOUR LIST AFTER ADDING THE ONE MORE ITEM :${shoppingList}");
}
