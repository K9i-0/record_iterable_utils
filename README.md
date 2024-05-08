# record_iterable_utils

A Dart package providing a collection of extension methods and utility functions for working with iterable records (tuples).

## Features

- `mapRecord`: Apply a mapping function to each record in an iterable.
- `whereRecord`: Filter records in an iterable based on a predicate function.

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  record_iterable_utils: ^{latest}
```

Then run `dart pub get` to fetch the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:record_iterable_utils/record_iterable_utils.dart';
```

Then use the extension methods on your record iterables:

```dart
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
```