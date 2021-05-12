import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controllers/MenuController.dart';
import '../../../responsive.dart';
import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuController>().controlMenu),
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(
          flex: Responsive.isDesktop(context) ? 2 : 1,
        ),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.face,
              size: 38,
            ),
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Christopher Dias"),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
