import 'package:chrisander_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../widgets/side_menu/side_menu.dart';
import '../../widgets/custom_data_table/custom_data_table.dart';
import '../../models/Tasks.dart';

class TasksScreen extends StatelessWidget {
  static String route = '/tasks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tasks",
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: SideMenu(),
      body: TasksScreenBody(),
    );
  }
}

class TasksScreenBody extends StatelessWidget {
  formatStatus(TaskStatus status) {
    switch (status) {
      case TaskStatus.PENDING:
        return Chip(
          label: Text('Pending'),
          backgroundColor: Colors.redAccent,
        );
      case TaskStatus.IN_PROGRESS:
        return Chip(
          label: Text("In Progress"),
          backgroundColor: Colors.yellow.shade800,
        );
      case TaskStatus.DONE:
        return Chip(
          label: Text("Done"),
          backgroundColor: Colors.green,
        );
      default:
        return Chip(
          label: Text('Pending'),
          backgroundColor: Colors.redAccent,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.all(defaultSizing),
      child: CustomDataTable(
          title: "Task List",
          headers: [
            CustomDataTableHeader(title: "Task"),
            CustomDataTableHeader(title: "Assigned To"),
            CustomDataTableHeader(title: "Status"),
            CustomDataTableHeader(title: "Assigned On"),
          ],
          rows: demoTasks
              .map((e) => [
                    Text(e.task),
                    Text(e.assignedTo),
                    formatStatus(e.status),
                    Text(DateFormat("dd MMM yyyy,   hh:mm a")
                        .format(e.assignedOn))
                  ])
              .toList()),
    ));
  }
}
