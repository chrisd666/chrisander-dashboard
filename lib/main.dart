import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './controllers/MenuController.dart';
import './constants.dart';
import './screens/main/main_screen.dart';
import './screens/tasks/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white),
              canvasColor: secondaryColor),
          routes: {
            '/': (context) => MainScreen(),
            '/tasks': (context) => TasksScreen()
          },
        ));
  }
}
