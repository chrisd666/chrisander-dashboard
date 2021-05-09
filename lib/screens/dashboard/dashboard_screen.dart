import 'package:flutter/material.dart';
import '../../constants.dart';
import './components/header.dart';
import './components/storage_details.dart';
import 'components/my_files.dart';

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
                Expanded(flex: 5, child: MyFields()),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(flex: 2, child: StorageDetails())
              ],
            )
          ],
        ),
      ),
    );
  }
}
