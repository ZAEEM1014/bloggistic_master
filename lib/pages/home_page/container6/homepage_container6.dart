import 'package:flutter/material.dart';

import '../../../responsiveLayout.dart';
import 'homepage_container6_desktop.dart';
import 'homepage_container6_mobile.dart';
import 'homepage_container6_tablet.dart';


class HomepageContainer6 extends StatelessWidget {
  const HomepageContainer6({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer6Mobile(),
        tabletView: HomepageContainer6Tablet(),
        desktopView: HomepageContainer6Desktop(),
        largeScreenView: HomepageContainer6Desktop());
  }
}
