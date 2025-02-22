import 'package:flutter/material.dart';
import '../../utils/customElevatedButton.dart';
import 'navLogo.dart';
import 'nav_button.dart';
import 'package:get/get.dart';

class DesktopNavBar extends StatelessWidget {
  final Function(double) scrollToSection; // Function to handle scrolling

  const DesktopNavBar({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center( // Center the container horizontally
      child: Container(
        height: size.width * 0.05,
        width: size.width < 1920 ? size.width : 1920, // Limit the width
        decoration: const BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black, // Shadow color
              offset: Offset(0, 6), // Shadow below the container
              blurRadius: 30,
              spreadRadius: 30,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(fontSize: size.width * 0.02),
              Row(
                children: [
                  _navDivider(),
                  NavButton(
                    text: 'Home',
                    fontSize: size.width * 0.01,
                    onTap: () => scrollToSection(0), // Scroll to Home
                  ),
                  _navDivider(),
                  NavButton(
                    text: 'Blog-View',
                    fontSize: size.width * 0.01,
                    onTap: () => scrollToSection(700), // Adjusted position
                  ),
                  _navDivider(),
                  NavButton(
                    text: 'Blog-Write',
                    fontSize: size.width * 0.01,
                    onTap: () => scrollToSection(1400),
                  ),
                  _navDivider(),
                  NavButton(
                    text: 'ABOUT US',
                    fontSize: size.width * 0.01,
                    onTap: () => scrollToSection(2300),
                  ),
                  _navDivider(),
                  const SizedBox(width: 300),
                  Customelevatedbutton(
                    iconSize: size.width * 0.025,
                    fontSize: size.width * 0.011,
                    width: size.width * 0.13,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navDivider() {
    return Container(width: 2, height: 30, color: Colors.white);
  }
}
