// chapter no.4
// assignment no.2

// Write a program that takes a string as input and prints its reverse.
// // Implement this using both iterative and recursive approaches.
void main(List<String> args) {
  String name = "arslan";
  String name1 = "";
  String name2 = "";
  for (int i = name.length - 1; i >= 0; i--) {
    name1 += name[i];
  }
  print(name1);
  for (int i = 0; i <= name.length - 1; i++) {
    name2 += name[i];
  }
  print(name2);
}
