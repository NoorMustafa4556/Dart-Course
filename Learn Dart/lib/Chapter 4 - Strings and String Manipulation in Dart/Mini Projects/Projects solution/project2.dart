/*

  THis Projects that you can work on to practice operators, expressions, strings, string manipulation, and string formatting in Dart:

  Project 1: Word Frequency Counter
  
  Write a program that takes a paragraph of text as input and counts the frequency of each word in the paragraph. Ignore punctuation marks and consider words to be separated by spaces. Print the word frequency count in a tabular format, sorted by the word with the highest frequency.

  Requirements:

  1. Use appropriate operators and expressions to split the paragraph into words and count their frequencies.
  
  2. Perform string manipulation to remove punctuation marks and convert words to lowercase for accurate counting.
  
  3. Use string formatting to display the word frequency count in a tabular format.

  This projects will provide you with practical exercises to apply your knowledge of operators, expressions, strings, string manipulation, and string formatting in Dart. They will help reinforce your understanding of these concepts and enhance your programming skills.

*/
import 'dart:io';

void main(List<String> args) {
  //asking user to enter the paragraph

  stdout.write("enter your paragraph:");

  //store your whole paragraph in this paragraph container

  String paragraph = stdin.readLineSync()!;

  //replaceAll() used to remove the special characters from the paragraph

  paragraph.replaceAll(RegExp(r'[^\w\s]'), '');

  List myList = paragraph.split(" ");

  print("\nWord\t\tFrequency");
  print("-------------------------");

  for (int i = 0; i < myList.length; i++) {
    

//count the number of words that are duplicates in the list
    int count = 1;

    // Check for duplicates and count their occurrences
    for (int j = i + 1; j < myList.length; j++) {
      //condition to match the words
      if (myList[i] == myList[j]) {
        //increment in the counter container
        count++;
        // Mark the duplicate word as processed
        myList[j] = "";
      }
    }
//print the word and their frequencies
    print("${myList[i]}\t\t$count");
  }
}
