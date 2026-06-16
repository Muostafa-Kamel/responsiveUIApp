import 'package:flutter/material.dart';
import 'package:responsive_ui/core/themes/appColors.dart';
import '../constant/paths.dart';
import '../widgets/customCard.dart';
import '../widgets/customHeadLineRow.dart';
import '../widgets/customTabletContainer.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "T A B L E T ⬛",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: .bold,
          ),
        ),
        backgroundColor: Appcolors.appBGColor,
      ),
      backgroundColor: Appcolors.appBGColor,
      body: Padding(
        padding: .all(15),
        //Main Column
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white, fontSize: 14),
                decoration: InputDecoration(
                  hint: const Text("Search destinations,cities,experiences... "),
                  hintStyle:const  TextStyle(color: Colors.white),
                  fillColor:const  Color(0xff23231f),
                  prefixIcon:const  Icon(
                    Icons.search_sharp,
                    color: Color(0xff80817b),
                  ),
                  border: OutlineInputBorder(borderRadius: .circular(30)),
                  suffixIcon: const Icon(Icons.sort, color: Color(0xff80817b)),
                ),
              ),

              const SizedBox(height: 15),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient:const  LinearGradient(colors: [
                    Color(0xff5dc9a5),
                    Color(0xff085042),
                  ]),
                  border: Border.all(color: Colors.white38),
                  borderRadius: .circular(13),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 250,
                          height: .infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(13),
                              bottomLeft: Radius.circular(13),
                            ),
                            image: DecorationImage(
                              image: AssetImage(ImagePath.greecePath),
                              fit: .cover,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 10,
                          left: 10,
                          child: Card(
                            elevation: 3,
                            color: Color(0xff98dcc9),
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8),
                              child: Text("* Features"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Text("Top Destination"),
                        Text("Santorini, \nGreece"),
                        Text("Cliffside Villages & Whitewashed & Gardens"),
                        Text("Sunsets Over The Aegean"),
                        Card(
                          elevation: 3,
                          color: Color(0xff98dcc9),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: Text("Explore"),
                          ),
                        ),
                        Row(
                          children: [
                            Text("Rating: "),
                            Text("* 4.9 "),
                            SizedBox(width: 20,),
                            Text("Price: "),
                            Text("\$1060 "),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const CustomHeadLineRow(headLine1: "Categories", headLine2: "See all"),
              const SizedBox(height: 12),

              const SingleChildScrollView(
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

              const CustomHeadLineRow(headLine1: "Popular Destination", headLine2: "See all"),
              const SizedBox(height: 12),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.kyotoPath,
                          cityTitle: "Kyoto",
                          countryTitle: "Japan",
                          rate: "4.9",
                          price: "920",
                          shortInfo: "Culture",
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.dahabPath,
                          cityTitle: "Dahab",
                          countryTitle: "Egypt",
                          rate: "5",
                          price: "1000",
                          shortInfo: "Beach",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.baliPath,
                          cityTitle: "Bali",
                          countryTitle: "Indonesia",
                          rate: "4.8",
                          price: "640",
                          shortInfo: "City",
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.parisPath,
                          cityTitle: "Paris",
                          countryTitle: "France",
                          rate: "4.9",
                          price: "860",
                          shortInfo: "Beach",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.icelandPath,
                          cityTitle: "Iceland",
                          countryTitle: "Europe",
                          rate: "4.8",
                          price: "1100",
                          shortInfo: "Ice Mountain",
                        ),
                      ),
                      const SizedBox(width: 12,),
                      Expanded(
                        child: CustomTabletContainer(
                          imagePath: ImagePath.maldivesPath,
                          cityTitle: "Maldives",
                          countryTitle: "Indian Ocean",
                          rate: "5",
                          price: "2400",
                          shortInfo: "Beach",
                        ),
                      ),
                    ],
                  ),
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
