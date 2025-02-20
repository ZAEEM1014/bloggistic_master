import 'package:flutter/material.dart';

import '../../../responsiveLayout.dart';
import 'homepage_container1_desktop.dart';
import 'homepage_container1_mobile.dart';
import 'homepage_container1_tablet.dart';




class HomepageContainer1 extends StatelessWidget {
  const HomepageContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer1Mobile(),
        tabletView: HomepageContainer1Tablet(),
        desktopView: HomepageContainer1Desktop(),
        largeScreenView: HomepageContainer1Desktop());
  }
}
