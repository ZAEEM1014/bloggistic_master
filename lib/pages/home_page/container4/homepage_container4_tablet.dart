import 'package:flutter/material.dart';

import 'feature_box.dart';


class HomepageContainer4Tablet extends StatelessWidget {
  const HomepageContainer4Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1050,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Explore Blogging Like Never Before\n | Bloggistic",
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 50,
          ),
          FeatureBox(title: "Creative Writing", description: "Unleash your creativity and share compelling stor-\nies with a global audience."),
          SizedBox(height: 30,),
          FeatureBox(title: "In-Depth Articles", description: "Explore deeply researched content that offers uni-\n queinsights across various fields."),
          SizedBox(height: 30,),
          FeatureBox(title: "Reader Engagement", description: "Connect with readers, encourage discussions, and\n build a loyal audience for your blogs."),
          SizedBox(height: 30,),
          FeatureBox(title: "Time Efficiency", description: "Access well-structured blogs that deliver valuable\n insights quickly and efficiently."),
          SizedBox(height: 30,),
          FeatureBox(title: "Transparent Content Guidelines", description: "Benefit from clear, ethical, and reliable publishing\nstandards that ensure content authenticity."),
          SizedBox(height: 30,),
          FeatureBox(title: "Personalized Reading Experience", description: "Tailor your blog feed to match your interests and \ndiscover content curated just for you."),
        ],
      ),

    );
  }
}
