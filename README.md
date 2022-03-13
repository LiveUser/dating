# Dating

A sexy library with useful extensions for DateTime class

Hecho en 🇵🇷 por Radamés J. Valentín Reyes

## Importing

~~~dart
import 'package:dating/dating.dart';
~~~

##  Examples

- isInRange extension. Returns true if this date is  within the specified range.

~~~dart
DateTime from = DateTime(2001,9,11);
DateTime to = DateTime(2021,10,28);
DateTime selectedDate = DateTime(2016,5,27);
print(selectedDate.isInRange(from: from, to: to));
~~~

- isInRange with onlyCheckDate optional parameter(false by default)

  ~~~dart
  DateTime from = DateTime(2001,9,11);
  DateTime to = DateTime(2021,10,28);
  DateTime selectedDate = DateTime(2016,5,27);
  print(selectedDate.isInRange(from: from, to: to, onlyCheckDate: true));
  ~~~

  