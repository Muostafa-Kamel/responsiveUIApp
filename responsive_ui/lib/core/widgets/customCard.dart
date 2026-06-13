import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/appColors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Appcolors.appBGColor,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white60, fontWeight: .bold),
        ),
      ),
    );
  }
}
