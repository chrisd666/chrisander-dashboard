import 'package:flutter/material.dart';
import '../../screens/dashboard/dashboard_screen.dart';
import '../../screens/tasks/tasks_screen.dart';
import '../../screens/employees/employees_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Text("Chrisander's")),
            DrawerListTile(
              icon: Icons.dashboard_rounded,
              title: "Dashboard",
              press: () {
                Navigator.pushNamed(context, DashboardScreen.route);
              },
            ),
            DrawerListTile(
              icon: Icons.receipt_long,
              title: "Transaction",
              press: () {},
            ),
            DrawerListTile(
              icon: Icons.list_alt_sharp,
              title: "Tasks",
              press: () {
                Navigator.pushNamed(context, TasksScreen.route);
              },
            ),
            DrawerListTile(
              icon: Icons.badge,
              title: "Employees",
              press: () {
                Navigator.pushNamed(context, EmployeesScreen.route);
              },
            ),
            DrawerListTile(
              icon: Icons.store_rounded,
              title: "Store",
              press: () {},
            ),
            DrawerListTile(
              icon: Icons.notifications,
              title: "Notifications",
              press: () {},
            ),
            DrawerListTile(
              icon: Icons.account_circle_rounded,
              title: "Profile",
              press: () {},
            ),
            DrawerListTile(
              icon: Icons.settings,
              title: "Settings",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        size: 16,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
