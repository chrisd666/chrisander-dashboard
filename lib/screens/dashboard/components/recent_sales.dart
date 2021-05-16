import 'package:flutter/material.dart';
import '../../../widgets/CustomDataTable/custom_data_table.dart';
import '../../../constants.dart';
import '../../../models/SaleInfo.dart';

class RecentSales extends StatelessWidget {
  const RecentSales({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: CustomDataTable(
          title: "Recent Sales",
          headers: [
            SaleInfoHeader(title: "Product"),
            SaleInfoHeader(title: "Amount", isNumeric: true),
            SaleInfoHeader(title: "Quantity", isNumeric: true),
            SaleInfoHeader(title: "Sold On")
          ],
          rows: demoSaleInfo
              .map((e) => [
                    e.product,
                    numberFormat.format(e.price),
                    "${e.quantity}",
                    e.date
                  ])
              .toList(),
        ));
  }
}
