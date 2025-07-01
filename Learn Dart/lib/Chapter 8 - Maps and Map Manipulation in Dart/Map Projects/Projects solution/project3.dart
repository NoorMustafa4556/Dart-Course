// PRoject Title : Expense Tracker:

// Description

// The Expense Tracker is a console-based application designed to help individuals or businesses keep track of their expenses. With this application, users can easily record their expenses, categorize them, and analyze their spending habits. The system allows users to add expenses by providing descriptions and amounts, making it simple to log all their financial transactions. Users can categorize expenses into different categories, enabling them to understand where their money is being spent. The application provides the functionality to display total expenses for each category, giving users an overview of their spending in various areas. Moreover, users can search for expenses within a specific date range, allowing them to review their expenses during a specific period. The system also allows users to remove expenses from the tracker, providing flexibility in managing their financial records. With the Expense Tracker, users can efficiently monitor their expenses, make informed financial decisions, and maintain better control over their budget.

// Requirements:
// 1. Create a console-based expense tracking application.
// 2. Implement functionality to add expenses with descriptions and amounts.
// 3. Allow users to categorize expenses and display total expenses by category.
// 4. Provide an option to search for expenses within a specific date range.
// 5. Enable users to delete expenses from the tracker.
import 'dart:io';

void main() {
  List<Map<String, dynamic>> expenses = [];

  while (true) {
    print("Expense Tracker Menu:");
    print("1. Add Expense");
    print("2. Display Total Expenses by Category");
    print("3. Search Expenses by Date Range");
    print("4. Delete Expense");
    print("5. Exit");

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter expense description: ");
        var description = stdin.readLineSync()!;
        print("Enter expense amount: ");
        var amount = double.parse(stdin.readLineSync()!);
        print("Enter expense category: ");
        var category = stdin.readLineSync()!;

        expenses.add({
          "description": description,
          "amount": amount,
          "category": category
        });
        print("Expense added successfully!");

        break;

      case 2:
        Map<String, double> categories = {};
        for (var expense in expenses) {
          categories[expense["category"]] =
              (categories[expense["category"]] ?? 0) + expense["amount"];
        }

        for (var category in categories.keys) {
          print("Total expenses for $category: ${categories[category]}");
        }
        break;

      case 3:
        print("Enter start date (YYYY-MM-DD): ");
        var startDate = stdin.readLineSync()!;
        print("Enter end date (YYYY-MM-DD): ");
        var endDate = stdin.readLineSync()!;

        var filteredExpenses = expenses
            .where((expense) =>
                startDate.compareTo(expense["date"]) <= 0 &&
                endDate.compareTo(expense["date"]) >= 0)
            .toList();

        print("Expenses within the date range:");
        filteredExpenses.forEach((expense) {
          print(
              "${expense['description']} - ${expense['amount']} - ${expense['category']}");
        });
        break;

      case 4:
        print("Enter the description of the expense to delete: ");
        var expenseToDelete = stdin.readLineSync()!;
        var matchingExpenses = expenses
            .where((expense) => expense["description"] == expenseToDelete)
            .toList();

        if (matchingExpenses.isNotEmpty) {
          expenses.remove(matchingExpenses[0]);
          print("Expense deleted successfully!");
        } else {
          print("Expense not found.");
        }
        break;

      case 5:
        print("Exiting Expense Tracker. Goodbye!");
        return;

      default:
        print("Invalid choice. Please enter a number between 1 and 5.");
        break;
    }
  }
}
