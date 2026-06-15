import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMobileContainer extends StatelessWidget {
  const CustomMobileContainer({
    super.key,
    required this.cityTitle,
    required this.countryTitle,
    required this.rate,
    required this.price,
    required this.imagePath,
  });

  final String cityTitle;
  final String countryTitle;
  final String rate;
  final String price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white38),
        borderRadius: .circular(13),
        gradient: LinearGradient(
          colors: [Color(0xff1d9e75), Color(0xff262624)],
        ),
      ),
      child: Row(
        mainAxisAlignment: .start,
        children: [
          Container(
            padding: .only(right: 10),
            height: 99,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: .circular(13),
              image: DecorationImage(image: AssetImage(imagePath), fit: .cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Text(cityTitle),
                Text(countryTitle),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Text("* $rate "),
                    SizedBox(width: 120),
                    Text("\$ $price "),
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
