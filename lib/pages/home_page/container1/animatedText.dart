import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:md_car_wash/utils/colors.dart';

class HomepageAnimatedText extends StatelessWidget {
  final double fontSize;
  final double boxSize;
  final double secondFontsize;
  const HomepageAnimatedText({super.key,required this.fontSize, required this.boxSize, required this.secondFontsize});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Column(
          children: [
            Text(
              "WELCOME TO ",
              style: TextStyle(
                color: Colors.white,
                  fontFamily: 'poppins',
                  height: 0.9,
                  fontSize: fontSize , fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: boxSize,
              child: DefaultTextStyle(
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'poppins'
                ),
                child:Text('BLOGGING WEBSITE!!!'),
              ),
            ),
            SizedBox(height: 20,),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: secondFontsize,
                color: Colors.white,
                fontFamily: 'montserrat',
              ),
              child: AnimatedTextKit(
                totalRepeatCount: 100,
                animatedTexts: [
                  TypewriterAnimatedText('Empowering Ideas, One Blog at a Time.'),
                  TypewriterAnimatedText("Your Daily Dose of Inspiration and Knowledge."
                  ),
                  TypewriterAnimatedText("Where Words Create Impact and Stories Matter."),
                  TypewriterAnimatedText("Unleashing Creativity Through Thoughtful Writing."),
                  TypewriterAnimatedText("Explore, Learn, and Grow with Every Post."),

                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
