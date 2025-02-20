import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/homepage_container2_smooth_horizontal_contarolling.dart';
import '../../../utils/constants.dart';
import '../../../utils/custom_title.dart';
import 'UploadBlog/uploadBlog.dart';

class HomepageContainer2Tablet extends StatefulWidget {
  const HomepageContainer2Tablet({super.key});

  @override
  State<HomepageContainer2Tablet> createState() => _HomepageContainer2TabletState();
}

class _HomepageContainer2TabletState extends State<HomepageContainer2Tablet>
    with TickerProviderStateMixin {
  late ScrollingController controller;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 600,
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
                fontSize: 18
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
