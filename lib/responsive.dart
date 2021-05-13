import 'package:flutter/material.dart';

// class Responsive extends StatelessWidget {
//   final Widget mobile;
//   final Widget tablet;
//   final Widget desktop;

//   const Responsive(
//       {Key key, @required this.mobile, this.tablet, @required this.desktop})
//       : super(key: key);

//   static bool isMobile(BuildContext context) =>
//       MediaQuery.of(context).size.width < 850;

//   static bool isTablet(BuildContext context) =>
//       MediaQuery.of(context).size.width < 1100 &&
//       MediaQuery.of(context).size.width >= 850;

//   static bool isDesktop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 1100;

//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;

//     if (_size.width >= 1100)
//       return desktop;
//     else if (_size.width >= 850 && tablet != null)
//       return tablet;
//     else
//       return mobile;
//   }
// }

class Responsive extends StatelessWidget {
  final Widget xs;
  final Widget sm;
  final Widget md;
  final Widget lg;

  const Responsive(
      {Key key,
      @required this.xs,
      this.sm,
      @required this.md,
      @required this.lg})
      : super(key: key);

  static bool isXS(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  static bool isSM(BuildContext context) =>
      MediaQuery.of(context).size.width <= 960 &&
      MediaQuery.of(context).size.width > 600;

  static bool isMD(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1280 &&
      MediaQuery.of(context).size.width > 960;

  static bool isLG(BuildContext context) =>
      MediaQuery.of(context).size.width > 1280;

  @override
  Widget build(BuildContext context) {
    if (isLG(context))
      return lg;
    else if (isMD(context))
      return md;
    else if (isSM(context))
      return sm;
    else
      return xs;
  }
}
