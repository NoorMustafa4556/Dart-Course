//  Implement a Dart program that simulates a phonebook using a map. The program should allow the user to add a new contact (name and phone number), search for a contact by name, update a contact's phone number, and delete a contact. Display appropriate messages after each operation.
void main(List<String> args) {
  //creating a contact map
  Map<String, String> myMap = {
    "arslan": "+923468459907",
    "sheraz": "+923106619363",
    "asif": "+923055795960",
    "sohial": "+923057795960"
  };
//print the actual map

  print("your map is :${myMap}");

  //accessing one contact number of any employee

  print("the contact number of arslan is :${myMap["arslan"]}");

  //updating the contact of any employee

  myMap["arslan"] = "+923017573344";

  //print your map after updation

  print("after updation your map is:");

  print(myMap);

  //removing one key-value pair

  myMap.remove("sohial");

  //after removing the final map is

  print("after deletion of one contact your remaining map is :");

  print(myMap);
}
