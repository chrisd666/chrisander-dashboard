import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'components/sales_details.dart';
import 'components/info.dart';
import 'components/recent_sales.dart';
import '../../widgets/side_menu/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: SideMenu(),
      body: DashboardScreenBody(),
    );
  }
}

class DashboardScreenBody extends StatelessWidget {
  const DashboardScreenBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          // Header(),
          SizedBox(
            width: defaultPadding,
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(children: [
                    Info(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    RecentSales(),
                    if (Responsive.isXS(context) || Responsive.isSM(context))
                      SizedBox(
                        height: defaultPadding,
                      ),
                    if (Responsive.isXS(context) || Responsive.isSM(context))
                      SalesDetails()
                  ])),
              if (!Responsive.isXS(context) && !Responsive.isSM(context))
                SizedBox(
                  width: defaultPadding,
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
