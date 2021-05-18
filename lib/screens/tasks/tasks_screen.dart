import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/MenuController.dart';
import '../../responsive.dart';
import '../../widgets/side_menu/side_menu.dart';
import '../../widgets/custom_data_table/custom_data_table.dart';
import '../../widgets/custom_data_table/custom_data_table_header.type.dart';
import '../../models/Tasks.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLG(context)) Expanded(child: SideMenu()),
            Expanded(
                flex: 5,
                child: CustomDataTable(
                    title: "Tasks",
                    headers: [
                      CustomDataTableHeader(title: "Task"),
                      CustomDataTableHeader(title: "Assigned To"),
                      CustomDataTableHeader(title: "Status"),
                      CustomDataTableHeader(title: "Assigned On"),
                    ],
                    rows: demoTasks.map((e) =>
                        // [e.task, e.assignedTo, e.status, e.assignedOn]
                        [e.task, "ass", "tiddies", "ass&tiddies"]).toList()))
          ],
        ),
      ),
    );
  }
}
