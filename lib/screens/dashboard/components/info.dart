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
    final Size _size = MediaQuery.of(context).size;

    return Column(
      children: [
        Responsive(
          mobile: InfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: InfoCardGridView(),
          desktop: InfoCardGridView(
            crossAxisCount: 2,
            childAspectRatio: _size.width < 1400 ? 1.1 : 1 / 0.5,
          ),
        )
      ],
    );
  }
}

class InfoCardGridView extends StatelessWidget {
  const InfoCardGridView({
    Key key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    // this.childAspectRatio = 1 / 0.5,
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
