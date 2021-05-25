import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../constants.dart';
import '../../widgets/custom_data_table/custom_data_table.dart';
import '../../models/Employee.dart';
import '../../widgets/side_menu/side_menu.dart';

class EmployeesScreen extends StatelessWidget {
  static String route = '/employees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees'),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: SideMenu(),
      body: EmployeesScreenBody(),
    );
  }
}

class EmployeesScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.all(defaultSizing),
      child: CustomDataTable(
        title: "Employee list",
        headers: [
          CustomDataTableHeader(title: "Name"),
          CustomDataTableHeader(title: "Working In"),
          CustomDataTableHeader(title: "Role")
        ],
        rows: demoEmployees
            .map((e) => [Text(e.name), Text(e.workingIn), Text(e.role)])
            .toList(),
      ),
    ));
  }
}
