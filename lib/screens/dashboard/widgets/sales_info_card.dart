import 'package:flutter/material.dart';
import '../../../constants.dart';

class SalesInfoCard extends StatelessWidget {
  const SalesInfoCard({
    Key key,
    @required this.title,
    @required this.inventoryQty,
    @required this.icon,
    @required this.soldQty,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final int soldQty, inventoryQty;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultSizing),
      padding: EdgeInsets.all(defaultSizing),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
          borderRadius: const BorderRadius.all(Radius.circular(defaultSizing))),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Icon(
              icon,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultSizing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  numberFormat.format(inventoryQty),
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.white70),
                )
              ],
            ),
          )),
          Text(numberFormat.format(soldQty))
        ],
      ),
    );
  }
}
