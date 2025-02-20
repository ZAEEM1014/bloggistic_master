import 'package:bloggistic_master/widgets/navbar/tabletnavbar.dart';
import 'package:flutter/material.dart';

import '../../responsiveLayout.dart';
import 'desktopnavbar.dart';
import 'mobilenavbar.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: Mobilenavbar(),
        tabletView: Tabletnavbar(),
        desktopView: DesktopNavBar(),
        largeScreenView: DesktopNavBar());
  }
}
