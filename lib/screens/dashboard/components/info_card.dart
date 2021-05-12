import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/InfoCardData.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key key, @required this.info}) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoCardLeft(info: info),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Icon(info.icon),
          ),
        ],
      ),
    );
  }
}

class InfoCardLeft extends StatelessWidget {
  const InfoCardLeft({
    Key key,
    @required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info.title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(color: Colors.white70),
          ),
          Text(
            "${info.isMoney ? 'Rs. ' : null} ${info.amount}",
            style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.lightBlueAccent, fontWeight: FontWeight.w600),
          ),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
                child: Container(
                    margin: EdgeInsets.only(right: defaultPadding / 2),
                    child: Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.greenAccent,
                    )),
                alignment: PlaceholderAlignment.middle),
            TextSpan(
                text: "+${info.percentageChange}%  ",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.greenAccent)),
            TextSpan(
                text: "this week",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.white70))
          ])),
        ],
      ),
    );
  }
}
