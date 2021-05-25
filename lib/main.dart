import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './controllers/MenuController.dart';
import './constants.dart';
import './screens/tasks/tasks_screen.dart';
import './screens/dashboard/dashboard_screen.dart';
import './screens/employees/employees_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          )
        ],
        child: MaterialApp(
          title: 'Flutter Admin Panel',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            cardColor: surfaceColor,
          ),
          routes: {
            '/': (context) => DashboardScreen(),
            '/tasks': (context) => TasksScreen(),
            '/employees': (context) => EmployeesScreen()
          },
        ));
  }
}
