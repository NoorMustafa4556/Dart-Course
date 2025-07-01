// chapter no.4
// assignment no.3

// write a program that takes a string as input and counts the number of vowels (a, e, i, o, u) in it. Ignore case sensitivity.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your string:");
  String name = stdin.readLineSync()!;
  name = name.toLowerCase();
  // String vowels = "a,e,i,o,u";

  int count = 0;
  for (int i = 0; i < name.length - 1; i++) {
    if ('a,e,i,o,u'.contains(name[i])) {
      count++;
    }
  }
  print(count);
}
