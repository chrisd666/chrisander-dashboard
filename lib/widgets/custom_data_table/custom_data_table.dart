import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable(
      {Key key,
      @required this.title,
      @required this.headers,
      @required this.rows})
      : super(key: key);

  final String title;
  final List<CustomDataTableHeader> headers;
  final List<List<dynamic>> rows;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSizing),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
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
  final List<List<dynamic>> rows;

  DataRow renderDataRow(List<dynamic> row) {
    return DataRow(cells: row.map((e) => DataCell(e)).toList());
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
                    columnSpacing: defaultSizing,
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

class CustomDataTableHeader {
  final String title;
  final bool isNumeric;

  CustomDataTableHeader({@required this.title, this.isNumeric = false});
}
