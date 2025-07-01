//     Write a Dart program that takes a list of words as input and counts the frequency of each word using a map. The program should display the word and its frequency in descending order of frequency. If two or more words have the same frequency, they should be displayed in lexicographical (alphabetical) order.
import 'dart:io';

void main(List<String> args) {
  //create an empty list

  List myList = [];

  //print this message to user

  print("enter your words in list one by one :");

  //for loop for entering the elements in list one by one

  for (int i = 0; i < 5; i++) {
    String a = stdin.readLineSync()!;

    //adding in the list

    myList.add(a);
  }
  //print the list

  print(myList);

  //creating an empty map to store the map elements

  Map<String, int> wordFrequency = {};

  //for-in loop for checking the frequency

  for (String word in myList) {
    wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
  }
  print(wordFrequency);
  // Sort the entries in reverse order
  var sortedEntries = wordFrequency.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Print word frequency in reverse order
  print("\nWord\t\tFrequency");
  print("-------------------------");

  // For-each loop for iterating the sorted entries and printing the words and their frequency
  sortedEntries.forEach((entry) {
    print("${entry.key}\t\t${entry.value}");
  });
}
