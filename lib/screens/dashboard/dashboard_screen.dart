import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'widgets/sales_details.dart';
import 'widgets/info.dart';
import 'widgets/recent_sales.dart';
import '../../widgets/side_menu/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: SideMenu(),
      body: DashboardScreenBody(),
    );
  }
}

class DashboardScreenBody extends StatelessWidget {
  const DashboardScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.only(
          right: defaultSizing, left: defaultSizing, bottom: defaultSizing),
      child: Column(
        children: [
          // Header(),
          SizedBox(
            width: defaultSizing,
            height: defaultSizing,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(children: [
                    Info(),
                    SizedBox(
                      height: defaultSizing,
                    ),
                    RecentSales(),
                    if (Responsive.isXS(context) || Responsive.isSM(context))
                      SizedBox(
                        height: defaultSizing,
                      ),
                    if (Responsive.isXS(context) || Responsive.isSM(context))
                      SalesDetails()
                  ])),
              if (!Responsive.isXS(context) && !Responsive.isSM(context))
                SizedBox(
                  width: defaultSizing,
                ),
              if (!Responsive.isXS(context) && !Responsive.isSM(context))
                Expanded(flex: 2, child: SalesDetails())
            ],
          )
        ],
      ),
    ));
  }
}
