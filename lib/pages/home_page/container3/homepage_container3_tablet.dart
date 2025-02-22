import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/customElevatedButton.dart';
import '../../../utils/image_strings.dart';


class HomepageContainer3Tablet extends StatelessWidget {
  const HomepageContainer3Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 25,
        ),
        constraints: BoxConstraints(
          maxWidth: size.width <= 1920 ? size.width : 1920,
          maxHeight: 1500,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(BloggisticImages.container1_image1, width: size.width * 0.55),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Bloggistic Gateway to Insightful Blogging",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    fontFamily: 'poppins',
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Welcome to Bloggistic, your ultimate platform for expressing ideas, sharing knowledge, \nand discovering insightful blogs.At Bloggistic, we believe in the power of words and the \nimpact they can create in the digital world.",
                    style: TextStyle(
                      fontSize: size.width * 0.02805,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Our mission is to provide a seamless blogging experience where writers can share their\n perspectives and readers can explore a world of knowledge and inspiration. "
                      "Whether \nyou are a seasoned blogger or just starting, Bloggistic is your creative space to make \nyour voice heard.",
                  style: TextStyle(fontSize: size.width * 0.028),
                ),
                SizedBox(height: 20),
                Text(
                  "– Because every story matters, and every voice deserves to be heard.",
                  style: TextStyle(
                      fontSize: size.width * 0.032,
                      fontFamily: 'poppins',
                      color: AppColors.primaryColor),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: size.width*0.03,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1234, Bloggistic Street,\nSan Francisco, CA 94101",
                          style: TextStyle(fontSize: size.width * 0.030),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.perm_contact_calendar_rounded,
                          size: size.width*0.03,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "+92320 1541478,\nzaeemakh117@gmail.com",
                          style: TextStyle(fontSize: size.width * 0.030),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: Customelevatedbutton(
                    width: size.width*0.22,
                    height: size.width*0.08,
                    iconSize: size.width*0.04,
                    fontSize: size.width*0.017,
                    icon: Icons.read_more,
                    text: "Read More",
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    iconColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
