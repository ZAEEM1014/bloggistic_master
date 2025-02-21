import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/colors.dart';
import '../../utils/customElevatedButton.dart';
import '../../utils/custom_textbutton.dart';
import '../navbar/navLogo.dart';

class DesktopBottom extends StatelessWidget {
  const DesktopBottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(20),
      constraints: BoxConstraints(
          maxWidth: size.width < 1920 ? size.width : 1920, maxHeight: 400),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Get the Latest Blog Updates!",
            style: TextStyle(fontFamily: 'poppins', fontSize: 23),
          ),
          SizedBox(height: 10),
          Text(
              "Subscribe to our newsletter and stay updated with the latest blog posts and insights.",
              style: TextStyle(fontSize: 15)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: AppColors.primaryColor)),
                  ),
                  cursorColor: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              Customelevatedbutton(
                icon: Icons.mail,
                text: "Subscribe",
                backgroundColor: Colors.black,
                iconColor: Colors.white,
                textColor: Colors.white,
              )
            ],
          ),
          SizedBox(height: 90),
          SizedBox(
            width: 1100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavLogo(
                      fontSize: 18,
                      fontColor: Colors.black,
                    ),
                    Text(
                      "© 2024 Bloggistic",
                      style: TextStyle(fontSize: 15, height: 0.8),
                    ),
                    Text(
                      "Your go-to platform for insightful blogs",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 450,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Explore",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          CustomTextButton(onPressed: (){}, text: "Latest Blogs"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Popular Blogs"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Trending Topics"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Categories",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          CustomTextButton(onPressed: (){}, text: "Tech"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Business"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Lifestyle"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Health"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Finance"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Connect",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          CustomTextButton(onPressed: (){}, text: "Contact Us"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "About Us"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.x)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram)),
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
