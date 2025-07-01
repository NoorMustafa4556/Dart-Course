// Build a shopping cart program that allows users to add items, remove items, and calculate the total cost of the items in the cart. Use a map to store the item names as keys and their corresponding prices as values.

import 'dart:io';

void main(List<String> args) {
  //initializing a map of two items

  Map<String, dynamic> myMap = {"bag": 4500, "shoes": 8900};

  //print a message to the user

  print("your items in your cart are:");

  //print the map which you create
  print(myMap);

  //showing a message to the user

  print("would your like to'add' one more item.");

  //ask the user of his choice

  print("if yes then type 'yes' if no then type 'no'.");

  //store the user choice into this variable

  String userinput = stdin.readLineSync()!;

  //condition about the user choice

  if (userinput == "yes") {
    //ask the user to insert the name of item

    print("insert your 'item' name and 'price':");

    //input the item name

    String item = stdin.readLineSync()!;

    //input the price of that item

    int price = int.parse(stdin.readLineSync()!);

    //adding that item into your map

    myMap[item] = price;
  }
  //ask user for his choice for removing any element

  print("would you like to 'remove' any item from your cart.");

  //ask user to input his choice

  print("if yes then type 'yes' if not then type 'not'.");

  //store the user input into the variale

  String userinput1 = stdin.readLineSync()!;

  //condition to match user choice

  if (userinput1 == 'yes') {
    //print message to the user

    print("enter the name of 'item' which you want to 'remove'.");

    //input the name of the item

    String itemName = stdin.readLineSync()!;

    //removing this item into the map

    myMap.remove(itemName);
  }
  //initialize the variable to count the values of your items

  num total = 0;

  //for-each for iterating over the whole values of our map

  myMap.forEach((key, value) {
    //adding each item value into the total variable

    total += value;
  });
  //print your cart before count the prize of all the items

  print(myMap);

  //pirnt the total price of your items in the cart

  print("the total' prize' of your items is :${total}");
}
