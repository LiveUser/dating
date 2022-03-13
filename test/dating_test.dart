import 'package:flutter_test/flutter_test.dart';
import 'package:dating/dating.dart';

void main() {
  DateTime from = DateTime(2001,9,11);
  DateTime to = DateTime(2021,10,28);
  test('Checking if date is within range', () {
    DateTime selectedDate = DateTime(2016,5,27);
    print(selectedDate.isInRange(from: from, to: to));
  });
  test("Checking date before", (){
    DateTime selectedDate = DateTime(1941);
    print(selectedDate.isInRange(from: from, to: to));
  });
  test("Checking date equal to from", (){
    print(from.isInRange(from: from, to: to));
  });
  test("Checking date equal to to", (){
    print(to.isInRange(from: from, to: to,onlyCheckDate: true));
  });
  test("Checking date after to", (){
    DateTime selectedDate = DateTime(2022);
    print(selectedDate.isInRange(from: from, to: to));
  });
}
