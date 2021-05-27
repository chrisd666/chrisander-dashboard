import 'package:flutter/material.dart';
import '../../../widgets/custom_data_table/custom_data_table.dart';
import '../../../constants.dart';
import '../../../models/SaleInfo.dart';

class RecentSales extends StatelessWidget {
  const RecentSales({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      title: "Recent Sales",
      headers: [
        CustomDataTableHeader(title: "Product"),
        CustomDataTableHeader(title: "Amount", isNumeric: true),
        CustomDataTableHeader(title: "Quantity", isNumeric: true),
        CustomDataTableHeader(title: "Sold On")
      ],
      rows: demoSaleInfo
          .map((e) => [
                Text(e.product),
                Text(numberFormat.format(e.price)),
                Text("${e.quantity}"),
                Text(e.date)
              ])
          .toList(),
    );
  }
}
