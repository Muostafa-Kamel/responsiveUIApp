import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTabletContainer extends StatelessWidget {
  const CustomTabletContainer({
    super.key,
    required this.cityTitle,
    required this.countryTitle,
    required this.rate,
    required this.price,
    required this.imagePath,
    required this.shortInfo,
  });

  final String cityTitle;
  final String countryTitle;
  final String rate;
  final String price;
  final String imagePath;
  final String shortInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white38),
        borderRadius: .circular(13),
        gradient: LinearGradient(
          colors: [Color(0xff1d9e75), Color(0xff262624)],
        ),
      ),
      child: Column(
        mainAxisAlignment: .start,
        children: [
          Container(
            padding: .only(right: 10),
            height: 99,
            width: .infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              ),
              image: DecorationImage(image: AssetImage(imagePath), fit: .cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(cityTitle),
                    Card(
                      elevation: 3,
                      color: Color(0xff98dcc9),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(shortInfo),
                      ),
                    ),
                  ],
                ),
                Text(countryTitle),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("* $rate "),
                    Text("From: \$ $price "),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
