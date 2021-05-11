import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/RecentFiles.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key key}) : super(key: key);

  DataRow recentFileDataRow(RecentFile file) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          Icon(
            file.icon,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(file.title),
          )
        ],
      )),
      DataCell(Text(file.date)),
      DataCell(Text(file.size))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(label: Text("File Name")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Size")),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index]))),
          )
        ],
      ),
    );
  }
}
