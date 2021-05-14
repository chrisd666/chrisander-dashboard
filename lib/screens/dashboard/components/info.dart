import 'package:flutter/material.dart';
import '../../../responsive.dart';
import 'info_card.dart';
import '../../../constants.dart';
import '../../../models/InfoCardData.dart';

class Info extends StatelessWidget {
  const Info({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive(
          xs: InfoCardGridView(),
          sm: InfoCardGridView(
            crossAxisCount: 2,
          ),
          md: InfoCardGridView(
            crossAxisCount: 2,
            childAspectRatio: Responsive.isMD(context) ? 1 / 0.5 : 1.1,
          ),
          lg: InfoCardGridView(
            crossAxisCount: 2,
            childAspectRatio: Responsive.isLG(context) ? 1 / 0.5 : 1.1,
          ),
        )
      ],
    );
  }
}

class InfoCardGridView extends StatelessWidget {
  const InfoCardGridView({
    Key key,
    this.crossAxisCount = 1,
    this.childAspectRatio = 1 / 0.5,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFields.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) => InfoCard(
              info: demoMyFields[index],
            ));
  }
}
