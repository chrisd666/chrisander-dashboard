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
  final _formKey = GlobalKey<FormState>();

  List<String> dropdownValues = [
    'Chrisander Resort',
    'Chrisander Wines 1',
    'Chrisande Wines 2'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.all(defaultSizing),
      child: CustomDataTable(
        title: "Employee list",
        button: ElevatedButton.icon(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Add Employee"),
                      content: Form(
                        key: _formKey,
                        child: Container(
                          width: 300,
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'First Name'),
                              ),
                              SizedBox(
                                height: defaultSizing,
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Last Name'),
                              ),
                              SizedBox(
                                height: defaultSizing,
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Employee Role'),
                              ),
                              SizedBox(
                                height: defaultSizing,
                              ),
                              DropdownButton(
                                  value: dropdownValues[0],
                                  onChanged: (newValue) {
                                    print(newValue);
                                  },
                                  items: dropdownValues
                                      .map((e) => DropdownMenuItem(
                                          value: e, child: Text(e)))
                                      .toList()),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Cancel")),
                        ElevatedButton(onPressed: () {}, child: Text("Submit")),
                      ],
                      buttonPadding: EdgeInsets.all(defaultSizing),
                    );
                  });
            },
            icon: Icon(Icons.add),
            label: Text("Add Employee")),
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
