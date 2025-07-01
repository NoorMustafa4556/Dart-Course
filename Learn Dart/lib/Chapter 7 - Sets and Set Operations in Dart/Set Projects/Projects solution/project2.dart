// Set-based Quiz:

// Develop a console-based quiz game where questions are associated with sets. Display a set-based question to the player and provide multiple choices. The player selects the correct answer by choosing the corresponding set. Keep track of the player's score and display it at the end of the quiz.

// hint

// 1. Prepare a set of questions, each associated with a set as the correct answer.
// 2. Display a question to the player along with multiple choices.
// 3. Prompt the player to select the correct choice by choosing the corresponding set.
// 4. Keep track of the player's score and display it at the end of the quiz.

import 'dart:io';

void main() {
  //initialize a variable to count the score

  int score = 0;

//welcome to the user in prompt

  print("Welcome to the Quiz!");

  // Question 1
  //make a set of questions

  Set questionSet1 = {
    """Question 1: \nWhat is the capital of France?"
  a. Berlin
  b. Paris
  c. Rome
  d. Madrid"""
  };
  print(questionSet1);

  //storing the answer of question1

  String answer1 = 'b';

  //asking the uset to type the answer for the first question

  stdout.write("please type your answer for this question:");

  String userAnswer1 = stdin.readLineSync()!;

//condition for checking is the user's answer right

  if (userAnswer1 == answer1) {
    print("Correct!");
    //if the answer is right then add one score to the user score container
    score++;
  } else {
    print("Incorrect. The correct answer is b. Paris.");
  }

  // Question 2

  Set questionSet2 = {
    """Question 2: \nWhich planet is known as the Red Planet?
  a. Mars
  b. Venus
  c. Jupiter
  d. Saturn"""
  };
  print(questionSet2);

  //storing the answer of question2

  String answer2 = 'a';

  //asking user to enter the user's answer

  stdout.write("please type your answer for this question:");

  String userAnswer2 = stdin.readLineSync()!;

  //condition to check if user's answer is right accordig to the question2

  if (userAnswer2 == answer2) {
    print("Correct!");
    score++;
  } else {
    print("Incorrect. The correct answer is a. Mars.");
  }

  // Question 3

  Set questionSet3 = {
    """Question 3: \nWhat is the capital of Japan?"
  a. Beijing
  b. Tokyo
  c. Seoul
  d. Bangkok"""
  };
  print(questionSet3);
  //storing the answer of question3

  String answer3 = 'b';

  stdout.write("type your answer for this question :");

  String userAnswer3 = stdin.readLineSync()!;

  //condition to check if the user's answer is right
  // according to the question3
  if (userAnswer3 == answer3) {
    print("Correct!");
    score++;
  } else {
    print("Incorrect. The correct answer is b. Tokyo.");
  }

  // Display the final score of user's attempt
  print("Your final score: $score out of 3");
}
