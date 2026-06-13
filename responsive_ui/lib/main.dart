import 'package:flutter/material.dart';
import 'package:responsive_ui/core/screens/deskScreen.dart';
import 'package:responsive_ui/core/screens/homescreen.dart';
import 'package:responsive_ui/core/screens/mobileScreen.dart';
import 'package:responsive_ui/core/screens/tabletScreen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(
        mobile: MobileScreen(),
        tablet: TabletScreen(),
        desk: DeskScreen(),
      ),
    ),
  );
}
