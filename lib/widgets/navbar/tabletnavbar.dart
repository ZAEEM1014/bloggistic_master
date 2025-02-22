import 'package:flutter/material.dart';

import '../sidebar/tabletsidebar.dart';
import 'navLogo.dart';

class Tabletnavbar extends StatelessWidget {
  final Function(double) scrollToSection; // ✅ Accept scroll function

  const Tabletnavbar({super.key, required this.scrollToSection});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabletSidebar(scrollToSection: scrollToSection), // ✅ Pass to Sidebar
          const NavLogo(fontSize: 18),
        ],
      ),
    );
  }
}
