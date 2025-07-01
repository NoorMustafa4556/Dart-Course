// Shopping Cart Discount: Create a Dart program that simulates a shopping cart. Ask the user to enter the prices of multiple items they want to purchase, and store them in a list. Calculate the total price of the items. Apply a discount of 10% if the total price exceeds a certain threshold (e.g., $100). Use if-else statements to check for the discount eligibility and display the final pric
import 'dart:io';

void main() {
  // empity list
  List<int> mylist = [];
  print("enter the item  price that you want to buy:");
  for (int i = 0; i <= 5; i++) {
    int item = int.parse(stdin.readLineSync()!);
    mylist.add(item);
  }
  print(mylist);
  // total price of all item
  num sum = mylist.fold(0, (previousValue, element) => previousValue + element);
  print("the price of all item:  ${sum}");
  if (sum > 100) {
    print("your discount is 10%");
    double discount = sum * 0.1;
    double totalbill = sum - discount;
    print("your bill after discount is :   ${totalbill}");
  } else {
    print("you are not eligible for discount");
    print("youe bill is:${sum}");
  }
}
