// Student Attendance Tracker:

// Description

// The Student Attendance Tracker project is designed to help users efficiently track and manage the attendance of multiple students. It provides a convenient console-based interface to record and monitor students' attendance for each class session.

// Requirements:

// 1. The project should allow the user to track the attendance of multiple students.
// 2. Each student's attendance can be represented as a map, where the student's name is the key and the attendance record (stored in a list or set) is the value.
// 3. The project should provide options for marking students as present or absent for each class session.
// 4. It should calculate and display the percentage of attendance for each student.
// 5. Additionally, the project can generate reports, such as a list of students with low attendance or a summary of overall class attendance.
// 6. If-else statements can be used to check for specific conditions, such as notifying students with consecutive absences or rewarding students with high attendance.
import 'dart:io';

void main(List<String> args) {
  Map<String, List<int>> studentInfo = {};

  while (true) {
    print("\nWELCOME TO STUDENT MANAGEMENT SYSTEM ");
    print('1. INSERT NEW STUDENT WITH ALL ATTENDANCE');
    print('2. CALCULATE THE ATTENDANCE OF STUDENT ACCORDING TO NAME');
    print('3. DISPLAY THE EACH STUDENT PERCENTAGE');
    print("4. DISPLAY THE STUDENT WITH HIGHER ATTENDANCE");
    print('5. EXIT');

    stdout.write("\nEnter your option: ");
    int userInput = int.parse(stdin.readLineSync()!);

    if (userInput == 1) {
      addStudent(studentInfo);
    } else if (userInput == 2) {
      calculateStudentAttendance(studentInfo);
    } else if (userInput == 3) {
      displayPercentage(studentInfo);
    } else if (userInput == 4) {
      higherAttendance(studentInfo);
    } else if (userInput == 5) {
      exit(0);
    } else {
      print("Invalid option");
    }
  }
}

// Function to add a new student with attendance details
void addStudent(Map<String, List<int>> studentMap) {
  stdout.write("Enter the name of the student: ");
  String name = stdin.readLineSync()!;
  stdout.write(
      "Enter the details of this student, such as attendance for lectures");
  List<int> myList = [];
  for (int i = 1; i <= 4; i++) {
    print("Enter the attendance for $i lecture: ");
    int attendance = int.parse(stdin.readLineSync()!);
    myList.add(attendance);
  }
  studentMap[name] = myList;
  print(studentMap);
}

// Function to calculate and display a student's attendance
void calculateStudentAttendance(Map<String, List<int>> studentMap) {
  stdout.write(
      "Enter the name of the student to find their attendance percentage: ");
  String name = stdin.readLineSync()!;

  List<int>? attendanceList = studentMap[name];
  if (attendanceList != null) {
    int sum = attendanceList.fold(0, (previous, next) => previous + next);
    print("You attended $sum classes out of ${attendanceList.length}");

    if (sum >= 2) {
      print("This student is allowed to sit in the exam");
      print("Thanks!");
    } else {
      print("This student is not allowed to sit in the exam");
      print("Thanks");
    }
  } else {
    print("Student not found");
  }
}

// Function to display the attendance percentage of each student
void displayPercentage(Map<String, List<int>> studentMap) {
  studentMap.forEach((key, value) {
    int sum = value.fold(0, (previous, next) => previous + next);
    double average = sum / value.length * 100;
    print("The average attendance of $key is: ${average.toStringAsFixed(2)}%");
  });
}

// Function to find and display the student with the highest attendance
void higherAttendance(Map<String, List<int>> higher) {
  double maxPercentage = 0;
  String maxListKey = '';
  higher.forEach((key, value) {
    int sum =
        value.fold(0, (previousValue, element) => previousValue + element);
    double percentage = (sum / value.length) * 100;
    if (percentage > maxPercentage) {
      maxPercentage = percentage;
      maxListKey = key;
    }
  });
  print(
      'Highest attendance percentage is: $maxListKey, Percentage: ${maxPercentage.toStringAsFixed(2)}%');
}
