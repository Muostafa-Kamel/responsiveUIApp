import 'package:flutter/material.dart';

class CustomHeadLineRow extends StatelessWidget {
  const CustomHeadLineRow({
    super.key,
    required this.headLine1,
    required this.headLine2,
  });

  final String headLine1;
  final String headLine2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          headLine1,
          style: TextStyle(
            fontSize: 18,
            fontWeight: .bold,
            color: Colors.white,
          ),
        ),
        Text(
          headLine2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .w800,
            color: Color(0xff226e54),
          ),
        ),
      ],
    );
  }
}
