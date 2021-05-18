import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/custom_data_table/custom_data_table_header.type.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable(
      {Key key,
      @required this.title,
      @required this.headers,
      @required this.rows})
      : super(key: key);

  final String title;
  final List<CustomDataTableHeader> headers;
  final List<List<String>> rows;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          ScrollableTable(
            headers: headers,
            rows: rows,
          )
        ],
      ),
    );
  }
}

class ScrollableTable extends StatelessWidget {
  const ScrollableTable({Key key, @required this.headers, @required this.rows})
      : super(key: key);

  final List<CustomDataTableHeader> headers;
  final List<List<String>> rows;

  DataRow renderDataRow(List<String> row) {
    return DataRow(cells: row.map((e) => DataCell(Text(e))).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: constraints.maxWidth),
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: defaultPadding,
                    columns: headers
                        .map((header) => DataColumn(
                            label: Text(header.title), numeric: false))
                        .toList(),
                    rows: rows.map((e) => renderDataRow(e)).toList(),
                  ),
                ),
              )),
    );
  }
}
