import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/SaleInfo.dart';

class RecentSales extends StatelessWidget {
  const RecentSales({Key key}) : super(key: key);

  DataRow recentSalesDataRow(SaleInfo purchase) {
    return DataRow(cells: [
      DataCell(Text(purchase.product)),
      DataCell(Text(numberFormat.format(purchase.price))),
      DataCell(Text("${purchase.quantity}")),
      DataCell(Text(purchase.date))
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
            "Recent Sales",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(label: Text("Product")),
                  DataColumn(label: Text("Amount")),
                  DataColumn(label: Text("Quantity")),
                  DataColumn(label: Text("Sold On")),
                ],
                rows: List.generate(demoSaleInfo.length,
                    (index) => recentSalesDataRow(demoSaleInfo[index]))),
          )
        ],
      ),
    );
  }
}
