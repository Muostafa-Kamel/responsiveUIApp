import 'package:flutter/cupertino.dart';
import 'package:responsive_ui/core/screens/deskScreen.dart';
import 'package:responsive_ui/core/screens/mobileScreen.dart';
import 'package:responsive_ui/core/screens/tabletScreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({
    super.key,
    required this.mobile,
    required this.desk,
    required this.tablet,
  });

  final Widget mobile;
  final Widget desk;
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return MobileScreen();
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 800) {
          return TabletScreen();
        } else {
          return DeskScreen();
        }
      },
    );
  }
}
