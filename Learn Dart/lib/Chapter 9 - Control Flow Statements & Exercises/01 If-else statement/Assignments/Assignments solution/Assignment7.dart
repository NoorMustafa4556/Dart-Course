// Grade Analyzer with Map: Write a Dart program that takes a map as input, where the keys are students' names and the values are their corresponding grades. Calculate the average grade of the students and display it. Additionally, determine and display the student with the highest grade. Use if-else statements to compare grades and find the highest grade.

import 'dart:io';

void main(List<String> args) {
  Map myMap = {};
  for (int i = 0; i < 4; i++) {
    print("enter the name:");
    String name = stdin.readLineSync()!;
    print("enter his marks :");
    int marks = int.parse(stdin.readLineSync()!);
    myMap[name] = marks;
  }
  double sum = 0;
  myMap.forEach((key, value) {
    sum += value;
  });
  double average = sum / myMap.length;
  print("the average of students is :${average}");

  var sortedMap = myMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  print("your sorted map is here:");
  sortedMap.forEach((entry) {
    print('${entry.key}:${entry.value}');
  });
  if (sortedMap.isNotEmpty) {
    MapEntry<dynamic, dynamic> newMap = sortedMap.first;
    String mapKey = newMap.key;
    int mapValue = newMap.value;
    print("the highest marks of student in this map :");
    print('${mapKey}: ${mapValue}');
  }
}
