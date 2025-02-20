import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/customElevatedButton.dart';
import '../../../utils/image_strings.dart';


class HomepageContainer3Desktop extends StatelessWidget {
  const HomepageContainer3Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 50,
        ),
        constraints: BoxConstraints(
          maxWidth: size.width <= 1920 ? size.width : 1920,
          maxHeight: 620,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(BloggisticImages.container1_image1, width: size.width * 0.45),
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Bloggistic\n Gateway to Insightful Blogging",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'poppins',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to Bloggistic, your ultimate platform for expressing ideas, sharing knowledge, \nand discovering insightful blogs.At Bloggistic, we believe in the power of words and the \nimpact they can create in the digital world.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    "Our mission is to provide a seamless blogging experience where writers can share their\n perspectives and readers can explore a world of knowledge and inspiration. "
                        "Whether \nyou are a seasoned blogger or just starting, Bloggistic is your creative space to make \nyour voice heard."),
                SizedBox(height: 20),
                Text(
                "– Because every story matters, and every voice deserves \nto be heard.",
                  style: TextStyle(fontSize: 17,
                  fontFamily: 'poppins',
                    color: AppColors.primaryColor
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 30,),
                        SizedBox(width: 10),
                        Text("1234, Bloggistic Street,\nSan Francisco, CA 94101"),
                      ],
                    ),
                    SizedBox(width: 40),
                    Row(
                      children: [
                        Icon(Icons.perm_contact_calendar_rounded, size: 30,),
                        SizedBox(width: 10),
                        Text("+92320 1541478,\nzaeemakh117@gmail.com"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Customelevatedbutton(
                icon: Icons.read_more,
                  text: "Read More",
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                ),

              ],
            )
          ],
        ));
  }
}
