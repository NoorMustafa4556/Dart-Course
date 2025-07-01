// // Write a Dart program to filter a set of names based on specific criteria.
// Take a set of names as input and filter out the names that start with the letter 'A'.
// Display the filtered set of names.
void main(List<String> args) {
  //creating a string type
  Set<String> mySet = {
    'Arslan',
    'Asif',
    'Sheraz',
    'sohial',
    'khubaib',
    'zeeshan',
    'ejaz',
    'aqsam',
    'ali akmal'
  };
  //iterate over the string set one by one until the condition meets
  //using the takeWhiel() method
  Iterable<String> resultantSet =
      mySet.where((name) => name.startsWith("a") || name.startsWith("A"));
  //print the resultant set that contains our desire conditions
  print("your names that starts with letter a/A are :${resultantSet.toSet()}");
}
