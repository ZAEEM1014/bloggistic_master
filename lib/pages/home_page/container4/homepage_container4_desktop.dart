import 'package:flutter/material.dart';


import 'feature_box.dart';

class HomepageContainer4Desktop extends StatelessWidget {
  const HomepageContainer4Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth:  1000,
        maxHeight: 400,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Explore Blogging Like Never Before | Bloggistic",
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FeatureBox(title: "Creative Writing", description: "Unleash your creativity and share compelling stories\n with a global audience."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "In-Depth Articles", description: "Explore deeply researched content that offers unique\n insights across various fields.")
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Reader Engagement", description: "Connect with readers, encourage discussions, and\n build a loyal audience for your blogs."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Time Efficiency", description: "Access well-structured blogs that deliver valuable \ninsights quickly and efficiently.")
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Transparent Content Guidelines", description: "Benefit from clear, ethical, and reliable publishing standards\n that ensure content authenticity."),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Personalized Reading Experience", description: "Tailor your blog feed to match your interests and discover\n content curated just for you.")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
