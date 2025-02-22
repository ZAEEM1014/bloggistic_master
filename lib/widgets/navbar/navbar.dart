import 'package:flutter/material.dart';
import '../../responsiveLayout.dart';
import 'desktopnavbar.dart';
import 'mobilenavbar.dart';
import 'tabletnavbar.dart';

class Navbar extends StatelessWidget {
  final Function(double) scrollToSection;

  const Navbar({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: Mobilenavbar(scrollToSection: scrollToSection), // ✅ Fixed
      tabletView: Tabletnavbar(scrollToSection: scrollToSection), // ✅ Fixed
      desktopView: DesktopNavBar(scrollToSection: scrollToSection),
      largeScreenView: DesktopNavBar(scrollToSection: scrollToSection),
    );
  }
}
