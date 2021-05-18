import 'package:flutter/foundation.dart';

enum TaskStatus { PENDING, IN_PROGRESS, DONE }

class Tasks {
  final String task, assignedTo;
  final DateTime assignedOn;
  final TaskStatus status;

  Tasks(
      {@required this.task,
      @required this.assignedTo,
      @required this.assignedOn,
      this.status = TaskStatus.PENDING});
}

List<Tasks> demoTasks = [
  Tasks(
      task: "Clean storage area.",
      assignedTo: "Bruce Wayne",
      assignedOn: DateTime.parse("2021-04-01 13:12:00")),
  Tasks(
      task: "Unclog toilet.",
      assignedTo: "Tony Stark",
      assignedOn: DateTime.parse("2021-04-02 15:12:00")),
  Tasks(
      task: "Empty garbage.",
      assignedTo: "Bruce Banner",
      assignedOn: DateTime.parse("2021-05-01 23:00:00")),
  Tasks(
      task: "Re-stock shelves.",
      assignedTo: "Steve Rogers",
      assignedOn: DateTime.parse("2021-04-01 13:12:00")),
  Tasks(
      task: "Polish bottles.",
      assignedTo: "Harley Quinn",
      assignedOn: DateTime.parse("2021-07-01 13:12:00")),
  Tasks(
      task: "Fix toilet flush.",
      assignedTo: "Tony Stark",
      assignedOn: DateTime.parse("2021-04-03 13:12:00")),
];
