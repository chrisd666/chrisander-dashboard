import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'chart.dart';
import 'sales_info_card.dart';

class SalesDetails extends StatelessWidget {
  const SalesDetails({
    Key? key,
  }) : super(key: key);

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
            "Sales Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          SalesInfoCard(
            icon: Icons.liquor,
            title: "Whiskey",
            inventoryQty: 750,
            soldQty: 10,
          ),
          SalesInfoCard(
            icon: Icons.local_bar,
            title: "Vodka",
            inventoryQty: 800,
            soldQty: 12,
          ),
          SalesInfoCard(
            icon: Icons.sports_bar,
            title: "Beer",
            inventoryQty: 650,
            soldQty: 43,
          ),
          SalesInfoCard(
            icon: Icons.wine_bar,
            title: "Wine",
            inventoryQty: 10,
            soldQty: 1,
          ),
        ],
      ),
    );
  }
}
