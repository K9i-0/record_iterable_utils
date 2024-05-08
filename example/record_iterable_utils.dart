import 'package:record_iterable_utils/record_iterable_utils.dart';

void main() {
  final students = [('Alice', 20), ('Bob', 22), ('Charlie', 19), ('David', 21)];

  // Map records to a string representation
  final mappedStudents =
      students.mapRecord((name, age) => '$name is $age years old');
  print(mappedStudents);
  // Output: (Alice is 20 years old, Bob is 22 years old, Charlie is 19 years old, David is 21 years old)

  // Filter records based on age
  final filteredStudents = students.whereRecord((name, age) => age >= 21);
  print(filteredStudents);
  // Output: ((Bob, 22), (David, 21))
}
