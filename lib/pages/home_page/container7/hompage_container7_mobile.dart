import 'package:bloggistic_master/pages/home_page/container7/UploadBlog/UploadBlogContainer_Mobile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/homepage_container2_smooth_horizontal_contarolling.dart';
import '../../../utils/constants.dart';
import '../../../utils/custom_title.dart';
import 'UploadBlog/UploadBlogContainer_Desktop.dart';

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
      height: 820,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTitle(title: "BLOG-WRITE"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Dive into thought-provoking articles, expert insights and\n trending topics, covering everything from innovation \nto everyday experiences. Lets Write!!.... ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: size.width*0.026
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: size.width <= 1920 ? size.width : Constants.desktopwidth,
                maxHeight: 660
            ),
            child: UploadBlogContainerMobile (),
          ),
        ],
      ),
    );
  }


}