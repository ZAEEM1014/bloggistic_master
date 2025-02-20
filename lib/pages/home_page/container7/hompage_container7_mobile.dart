import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/controllers/homepage_container2_smooth_horizontal_contarolling.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_card_mobile_and_tablet.dart';
import 'package:md_car_wash/utils/custom_title.dart';

import '../../../utils/constants.dart';
import 'UploadBlog/uploadBlog.dart';

class HompageContainer7Mobile extends StatefulWidget {
  const HompageContainer7Mobile({super.key});

  @override
  State<HompageContainer7Mobile> createState() => _HompageContainer7MobileState();
}

class _HompageContainer7MobileState extends State<HompageContainer7Mobile>
    with TickerProviderStateMixin {
  late ScrollingController controller;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 620,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTitle(title: "Pricing"),
          SizedBox(
            height: 20,
          ),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page\nwhen looking at its layout. ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: size.width*0.036
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: size.width <= 1920 ? size.width : Constants.desktopwidth,
                maxHeight: 450
            ),
            child: SingleChildScrollView(
              controller: controller.scrollController,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(), // Smoother manual scrolling
              child: Row(
                children: List.generate(10, (index) => UploadBlogPage ()),
              ),
            ),
          ),
        ],
      ),
    );
  }


}