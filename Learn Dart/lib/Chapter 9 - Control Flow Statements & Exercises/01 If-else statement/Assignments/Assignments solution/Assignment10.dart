// To-Do List Priority: Write a Dart program that allows the user to maintain a to-do list. Each to-do item can have a priority level (e.g., low, medium, high), represented by a map where the keys are the task descriptions and the values are the priority levels. Implement functionality to add, remove, and display tasks based on their priority. Use if-else statements to filter and display tasks according to the user's choice.
import 'dart:io';

void main() {
  Map<String, String> toDoList = {};

  while (true) {
    print('===== To-Do List =====');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. Display Tasks');
    print('4. Exit');

    stdout.write('Enter your choice (1-4): ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        stdout.write('Enter task description: ');
        String description = stdin.readLineSync()!;

        stdout.write('Enter priority level (low, medium, high):');
        String priority = stdin.readLineSync()!;

        toDoList[description] = priority;
        print('Task added successfully!');
        break;

      case '2':
        stdout.write('Enter task description to remove:');
        String description = stdin.readLineSync()!;

        if (toDoList.containsKey(description)) {
          toDoList.remove(description);
          print('Task removed successfully!');
        } else {
          print('Task not found in the to-do list.');
        }
        break;

      case '3':
        stdout.write('Enter priority level to display (low, medium, high):');
        String priorityFilter = stdin.readLineSync()!;

        print('\nTasks with priority $priorityFilter:');
        toDoList.forEach((task, priority) {
          if (priority == priorityFilter) {
            print('$task - Priority: $priority');
          }
        });
        break;

      case '4':
        exit(0);

      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}
