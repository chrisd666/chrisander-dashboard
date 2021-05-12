import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../responsive.dart';
import './components/header.dart';
import 'components/sales_details.dart';
import 'components/info.dart';
import 'components/recent_sales.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
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
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) SalesDetails()
                    ])),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: SalesDetails())
              ],
            )
          ],
        ),
      ),
    );
  }
}
