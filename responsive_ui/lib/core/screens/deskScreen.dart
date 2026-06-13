import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/themes/appColors.dart';

class DeskScreen extends StatelessWidget {
  const DeskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("D E S K")),
      backgroundColor: Appcolors.appBGColor,
      body: Padding(
        padding: .all(15),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
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
                    height: 99,
                    decoration: BoxDecoration(
                      color: Color(0xff5dc9a5),
                      borderRadius: .vertical(top: Radius.circular(13)),
                    ),
                    // child: ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     "* Featured",
                    //     style: TextStyle(color: Color(0xff296d5a)),
                    //   ),
                    // ),
                  ),
                  Container(
                    height: 99,
                    decoration: BoxDecoration(
                      color: Color(0xff085042),
                      borderRadius: .vertical(bottom: Radius.circular(13)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
