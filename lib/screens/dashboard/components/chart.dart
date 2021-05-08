import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSectionDataList)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              Text(
                "29.1",
                style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 0.5),
              ),
              Text("of 128GB")
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionDataList = [
  PieChartSectionData(
      color: primaryColor, value: 15, showTitle: false, radius: 25),
  PieChartSectionData(
      color: Color(0xFF26E5FF), value: 20, showTitle: false, radius: 22),
  PieChartSectionData(
      color: Color(0XFFFFCF26), value: 10, showTitle: false, radius: 19),
  PieChartSectionData(
      color: Color(0xFFEE2727), value: 15, showTitle: false, radius: 16),
  PieChartSectionData(
      color: primaryColor.withOpacity(0.1),
      value: 15,
      showTitle: false,
      radius: 13),
];
