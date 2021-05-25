import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/InfoCardData.dart';

List<Color> gradientColors = [
  const Color(0xff23b6e6).withOpacity(0.6),
  const Color(0xff02d39a).withOpacity(0.6),
];

class InfoCard extends StatelessWidget {
  const InfoCard({Key key, @required this.info}) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Stack(
        children: [
          InfoChart(graphData: info.graphData),
          InfoFigures(info: info),
        ],
      ),
    );
  }
}

class InfoChart extends StatelessWidget {
  const InfoChart({Key key, @required this.graphData}) : super(key: key);

  final List<Map<String, double>> graphData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultSizing * 3),
      child: LineChart(
        LineChartData(
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(show: false),
            gridData: FlGridData(show: false),
            lineTouchData: LineTouchData(enabled: false),
            minY: 0,
            lineBarsData: [
              LineChartBarData(
                  spots: graphData.map((e) => FlSpot(e['x'], e['y'])).toList(),
                  isCurved: true,
                  dotData: FlDotData(show: false),
                  colors: gradientColors,
                  belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.1))
                          .toList()))
            ]),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear,
      ),
    );
  }
}

class InfoFigures extends StatelessWidget {
  const InfoFigures({
    Key key,
    @required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultSizing),
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
            "${info.isMoney ? 'Rs. ' : null} ${numberFormat.format(info.amount)}",
            style: Theme.of(context).textTheme.headline5.copyWith(
                color: Colors.lightBlueAccent, fontWeight: FontWeight.w600),
          ),
          RichText(
              text: TextSpan(children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                margin: EdgeInsets.only(right: defaultSizing / 2),
                child: Icon(
                  Icons.arrow_upward_rounded,
                  color: Colors.greenAccent,
                  size: 16,
                ),
              ),
            ),
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
