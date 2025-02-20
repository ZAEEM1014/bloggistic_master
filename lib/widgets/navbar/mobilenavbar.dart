import 'package:flutter/material.dart';

import '../sidebar/sidebar.dart';
import 'navLogo.dart';

class Mobilenavbar extends StatelessWidget {
  const Mobilenavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sidebar(),
          NavLogo(fontSize: 18)

        ],
      ),
    );
  }
}
