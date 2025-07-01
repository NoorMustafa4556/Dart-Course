/*

  Project 5: Matrix Operations

  You are working with matrices represented as lists of lists. Implement the following tasks using Dart lists:

  1. Create a matrix called matrix with the following values:

    [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

  2. Display the matrix to the user.

  3. Calculate and display the sum of all the elements in the matrix.

  4. Find the maximum value in the matrix and display it.

  5. Transpose the matrix (swap rows with columns) and display the transposed matrix.

  6. Multiply each element in the matrix by 2 and display the updated matrix.

*/

void main() {
  // Creating a 3*3 matrix

  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  // Initializing variables for finding the maximum value and sum in the matrix

  int max = matrix[0][0];

  //initializing variable for finding the sum of all the elements in the matrix

  int sum = 0;

  // Print the original matrix

  print("ORIGINAL MATRIX IS :");

  //for loop for treversing the each element in the matrix

  for (int i = 0; i < matrix.length; i++) {
    //print the each element of matrix

    print(matrix[i]);

    //this nested for loop for adding the each element in the variable sum

    for (int j = 0; j < matrix[i].length; j++) {
      //adding element in the vaiabel sum

      sum += matrix[i][j];

      //condition for checking if the first elements at 0 index is smaller

      if (matrix[i][j] > max) {
        //continue this condition until we find the greatest elememt in the matrix

        max = matrix[i][j];
      }
    }
  }

  // Print the sum and maximum value of the matrix

  print("THE SUM OF ALL THE ELEMENTS IN THE MATRIX : $sum");

  //print the maximum element in the matrix

  print("MAXIMUM VALUE IN THIS MATRIX: $max");

  // Transpose the matrix

  List<List<int>> transposedMatrix = [];

  for (int i = 0; i < matrix[0].length; i++) {
    List<int> row = [];
    for (int j = 0; j < matrix.length; j++) {
      row.add(matrix[j][i]);
    }
    transposedMatrix.add(row);
  }

  // transpose of this above matrix

  print("TRANSPOSE OF THE ABOVE MATRIX IS :");

  for (int i = 0; i < transposedMatrix.length; i++) {
    List<int> row = [];

    for (int j = 0; j < transposedMatrix[i].length; j++) {
      row.add(transposedMatrix[i][j]);
    }

    print(row);
  }
  // Multiply each element in the transpose matrix by 2 and print the updated matrix

  print(" AFTER MULTIPLICATION THE UPDATED MATRIX IS :");

  for (int i = 0; i < transposedMatrix.length; i++) {
    List<int> row = [];

    for (int j = 0; j < transposedMatrix[i].length; j++) {
      row.add(transposedMatrix[i][j] * 2);
    }
    print(row);
  }
}
