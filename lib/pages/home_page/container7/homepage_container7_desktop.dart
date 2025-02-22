import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/custom_title.dart';
import 'UploadBlog/UploadBlogContainer_Desktop.dart';

class HomepageContainer7Desktop extends StatefulWidget {
  const HomepageContainer7Desktop({super.key});

  @override
  _HomepageContainer7DesktopState createState() =>
      _HomepageContainer7DesktopState();
}

class _HomepageContainer7DesktopState extends State<HomepageContainer7Desktop>
    with TickerProviderStateMixin {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 850,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTitle(title: "  BLOG-WRITE"),
          SizedBox(
            height: 25,
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
              maxHeight: 630
            ),
            child: UploadBlogContainerDesktop(),
          ),
        ],
      ),
    );
  }





}
