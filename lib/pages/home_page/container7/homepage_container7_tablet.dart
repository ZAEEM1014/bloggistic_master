import 'package:bloggistic_master/pages/home_page/container7/UploadBlog/UploadBlogContainer_Tablet.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/custom_title.dart';
import 'UploadBlog/UploadBlogContainer_Desktop.dart';

class HomepageContainer7Tablet extends StatefulWidget {
  const HomepageContainer7Tablet({super.key});

  @override
  State<HomepageContainer7Tablet> createState() => _HomepageContainer7TabletState();
}

class _HomepageContainer7TabletState extends State<HomepageContainer7Tablet>
    with TickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 870,
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
            "Dive into thought-provoking articles, expert insights, and trending topics, covering everything from \ninnovation to everyday experiences\n Lets Write!!.... ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: 18
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: size.width <= 1920 ? size.width : Constants.desktopwidth,
                maxHeight: 660
            ),
            child:UploadBlogContainerTablet (),
          ),
        ],
      ),
    );
  }




}
