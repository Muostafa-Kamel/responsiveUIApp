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
      appBar: AppBar(title: const Text("M O B I L E 📱")),
      backgroundColor: Appcolors.appBGColor,
      body: Padding(
        padding: const .all(15),
        //Main Column
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  hint: const Text(
                    "Search destinations,cities,experiences... ",
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: const Color(0xff23231f),
                  prefixIcon: const Icon(
                    Icons.search_sharp,
                    color: Color(0xff80817b),
                  ),
                  border: OutlineInputBorder(borderRadius: .circular(30)),
                  suffixIcon: const Icon(Icons.sort, color: Color(0xff80817b)),
                ),
              ),

              const SizedBox(height: 15),
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
                        color: const Color(0xff5dc9a5),
                        borderRadius: .vertical(top: Radius.circular(13)),
                      ),
                      child: Column(
                        mainAxisAlignment: .start,
                        crossAxisAlignment: .start,
                        children: [
                          SizedBox(height: 50),
                          Card(
                            elevation: 3,
                            color: const Color(0xff98dcc9),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                              ),
                              child: const Text("* Features"),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //الجزء السفلي
                    Container(
                      padding: const .only(left: 15),
                      height: 99,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff085042),
                        borderRadius: .vertical(bottom: Radius.circular(13)),
                      ),
                      child: const Column(
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
              const SizedBox(height: 20),
              const CustomHeadLineRow(headLine1: "Categories", headLine2: "See all"),
              const SizedBox(height: 12),

              SingleChildScrollView(
                scrollDirection: .horizontal,
                child:const  Row(
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

              const CustomHeadLineRow(headLine1: "Popular", headLine2: "See all"),
              const SizedBox(height: 12),

              Column(
                children: [
                  CustomMobileContainer(
                    imagePath: ImagePath.kyotoPath,
                    cityTitle: "Kyoto",
                    countryTitle: "Japan",
                    rate: "4.9",
                    price: "920",
                  ),
                  const SizedBox(height: 12),
                  CustomMobileContainer(
                    imagePath: ImagePath.baliPath,
                    cityTitle: "Bali",
                    countryTitle: "Indonesia",
                    rate: "4.8",
                    price: "640",
                  ),
                  const SizedBox(height: 12),
                  CustomMobileContainer(
                    imagePath: ImagePath.parisPath,
                    cityTitle: "Paris",
                    countryTitle: "France",
                    rate: "4.9",
                    price: "860",
                  ),
                  const SizedBox(height: 12),

                  CustomMobileContainer(
                    imagePath: ImagePath.dahabPath,
                    cityTitle: "Dahab",
                    countryTitle: "Egypt",
                    rate: "5",
                    price: "1000",
                  ),
                  const SizedBox(height: 12),
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
