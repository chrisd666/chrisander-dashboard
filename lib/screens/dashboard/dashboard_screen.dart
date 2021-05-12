import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../responsive.dart';
import './components/header.dart';
import './components/storage_details.dart';
import 'components/info.dart';
import './components/recent_files.dart';

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
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetails()
                    ])),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: StorageDetails())
              ],
            )
          ],
        ),
      ),
    );
  }
}
