import 'package:flutter/foundation.dart';

class Employee {
  final String name, workingIn, role;

  Employee(
      {required this.name,
      required this.workingIn,
      this.role = "Receiptionist"});
}

List<Employee> demoEmployees = [
  Employee(name: "Chris", workingIn: "Chrisander Resort", role: "Manager"),
  Employee(name: "Alex", workingIn: "Chrisander Wines", role: "Manager"),
  Employee(name: "Francisco", workingIn: "Chrisander Farm", role: "Manager"),
  Employee(name: "Paul", workingIn: "Chrisander Resort", role: "Waiter"),
  Employee(name: "Peter", workingIn: "Chrisander Wines"),
  Employee(name: "John", workingIn: "Chrisander Farm", role: "Care-taker")
];
