// You are given a list of employees with their respective salaries. Implement a Dart program that uses a map to store the employee names as keys and their salaries as values. The program should calculate and display the average salary of all employees.
void main(List<String> args) {

  //given the list of employees's salary

  List employeeList = [5000, 4300, 33400, 1200];

  //creating an empty map to store the name and salaries of the employees

  Map<String, int> myMap = {};

  //adding names with their salaries

  myMap["arslan"] = employeeList[0];
  myMap["sohial"] = employeeList[1];
  myMap["asif"] = employeeList[2];
  myMap["sheraz"] = employeeList[3];

  //print the map with employes names and salaries

  print(myMap);

  //finding the average of all the employees salary

  num average = employeeList.fold(0, (previous, next) => previous + next);

  //print the average salary

  print("the average salary is :${average}");
  
}
