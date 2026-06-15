import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/constant/paths.dart';
import 'package:responsive_ui/core/themes/appColors.dart';
import 'package:responsive_ui/core/widgets/customMobileContainer.dart';

import '../widgets/customCard.dart';
import '../widgets/customHeadLineRow.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("M O B I L E 📱")),
      backgroundColor: Appcolors.appBGColor,
      body: Padding(
        padding: .all(15),
        //Main Column
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  hint: Text("Search destinations,cities,experiences... "),
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color(0xff23231f),
                  prefixIcon: Icon(Icons.search_sharp, color: Color(0xff80817b)),
                  border: OutlineInputBorder(borderRadius: .circular(30)),
                  suffixIcon: Icon(Icons.sort, color: Color(0xff80817b)),
                ),
              ),
          
              SizedBox(height: 15),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white38),
                  borderRadius: .circular(13),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: .all(10),
                      height: 99,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff5dc9a5),
                        borderRadius: .vertical(top: Radius.circular(13)),
                      ),
                      child: Column(
                        mainAxisAlignment: .start,
                        crossAxisAlignment: .start,
                        children: [
                          SizedBox(height: 50),
                          Card(
                            elevation: 3,
                            color: Color(0xff98dcc9),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8),
                              child: Text("* Features"),
                            ),
                          ),
                        ],
                      ),
                    ),
          
                    //الجزء السفلي
                    Container(
                      padding: .only(left: 15),
                      height: 99,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff085042),
                        borderRadius: .vertical(bottom: Radius.circular(13)),
                      ),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text("Top Destination"),
                          Text("Santorini, Greece"),
                          Text("Cliffside Views & Iconic Sunsets"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomHeadLineRow(headLine1: "Categories", headLine2: "See all"),
              SizedBox(height: 12),
          
              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  children: [
                    CustomCard(title: "All"),
                    CustomCard(title: "Beach"),
                    CustomCard(title: "Mountain"),
                    CustomCard(title: "City"),
                    CustomCard(title: "Culture"),
                    CustomCard(title: "Nature"),
                  ],
                ),
              ),
          
              CustomHeadLineRow(headLine1: "Popular", headLine2: "See all"),
              SizedBox(height: 12),
          
              Column(
                children: [
                  CustomMobileContainer(
                    imagePath: ImagePath.kyotoPath,
                    cityTitle: "Kyoto",
                    countryTitle: "Japan",
                    rate: "4.9",
                    price: "920",
                  ),
                  SizedBox(height: 12,),
                  CustomMobileContainer(
                    imagePath: ImagePath.baliPath,
                    cityTitle: "Bali",
                    countryTitle: "Indonesia",
                    rate: "4.8",
                    price: "640",
                  ),
                  SizedBox(height: 12,),
                  CustomMobileContainer(
                    imagePath: ImagePath.parisPath,
                    cityTitle: "Paris",
                    countryTitle: "France",
                    rate: "4.9",
                    price: "860",
                  ),
                  SizedBox(height: 12,),

                  CustomMobileContainer(
                    imagePath: ImagePath.dahabPath,
                    cityTitle: "Dahab",
                    countryTitle: "Egypt",
                    rate: "5",
                    price: "1000",
                  ),
                  SizedBox(height: 12,),

                ],
              ),
              //Main Column
            ],
          ),
        ),
      ),
    );
  }
}
