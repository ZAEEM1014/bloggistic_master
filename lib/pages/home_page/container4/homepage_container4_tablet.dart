import 'package:flutter/material.dart';

import 'feature_box.dart';


class HomepageContainer4Tablet extends StatelessWidget {
  const HomepageContainer4Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1000,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Car Detailing In Portugal | MdMobileCarWash",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FeatureBox(title: "Creative Writing", description: "Unleash your creativity and share compelling stories with a global audience."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "In-Depth Articles", description: "Explore deeply researched content that offers unique insights across various fields.")
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Reader Engagement", description: "Connect with readers, encourage discussions, and build a loyal audience for your blogs."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Time Efficiency", description: "Access well-structured blogs that deliver valuable insights quickly and efficiently.")
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Transparent Content Guidelines", description: "Benefit from clear, ethical, and reliable publishing standards that ensure content authenticity."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Personalized Reading Experience", description: "Tailor your blog feed to match your interests and discover content curated just for you.")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
