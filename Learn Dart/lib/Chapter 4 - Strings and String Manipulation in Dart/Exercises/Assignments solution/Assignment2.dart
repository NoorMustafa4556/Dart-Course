// chapter no.4
// assignment no.1

// Write a program that takes a sentence as input and counts the number of words in it.
void main(List<String> args) {
  String name = "this is a student";
  List count = name.split(" ");
  int a = 0;
  for (int i = 0; i <= count.length - 1; i++) {
    a++;
  }
  print(a);
}
