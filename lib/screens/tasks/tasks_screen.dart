import 'package:chrisander_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../widgets/side_menu/side_menu.dart';
import '../../widgets/custom_data_table/custom_data_table.dart';
import '../../widgets/custom_data_table/custom_data_table_header.type.dart';
import '../../models/Tasks.dart';

class TasksScreen extends StatelessWidget {
  static String route = '/tasks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tasks",
          style: Theme.of(context).textTheme.headline6,
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: SideMenu(),
      body: TasksScreenBody(),
    );
  }
}

class TasksScreenBody extends StatelessWidget {
  String formatStatus(TaskStatus status) {
    switch (status) {
      case TaskStatus.PENDING:
        return "pending";
      case TaskStatus.IN_PROGRESS:
        return "in progress";
      case TaskStatus.DONE:
        return "done";
      default:
        return "pending";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.all(defaultPadding),
      child: CustomDataTable(
          title: "Tasks",
          headers: [
            CustomDataTableHeader(title: "Task"),
            CustomDataTableHeader(title: "Assigned To"),
            CustomDataTableHeader(title: "Status"),
            CustomDataTableHeader(title: "Assigned On"),
          ],
          rows: demoTasks
              .map((e) => [
                    e.task,
                    e.assignedTo,
                    formatStatus(e.status),
                    DateFormat("MMM dd yyyy, HH:mm").format(e.assignedOn)
                  ])
              .toList()),
    ));
  }
}
