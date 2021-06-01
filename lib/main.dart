import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import './constants.dart';
import './screens/tasks/tasks_screen.dart';
import './screens/dashboard/dashboard_screen.dart';
import './screens/employees/employees_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // .dark().copyWith(
      //   scaffoldBackgroundColor: bgColor,
      //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      //       .apply(bodyColor: Colors.white),
      //   cardColor: surfaceColor,
      // ),
      routes: {
        '/': (context) {
          return FutureBuilder(
              future: _initialization,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print(snapshot.error);
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  return DashboardScreen();
                }

                return CircularProgressIndicator();
              });
        },
        '/tasks': (context) => TasksScreen(),
        '/employees': (context) => EmployeesScreen()
      },
    );
  }
}
