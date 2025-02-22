import 'package:flutter/material.dart';
import '../sidebar/mobilesidebar.dart';

import 'navLogo.dart';

class Mobilenavbar extends StatelessWidget {
  final Function(double) scrollToSection; // ✅ Accept scroll function

  const Mobilenavbar({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MobileSidebar(scrollToSection: scrollToSection), // ✅ Pass to Sidebar
          const NavLogo(fontSize: 18),
        ],
      ),
    );
  }
}
