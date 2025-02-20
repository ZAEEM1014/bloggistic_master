import 'package:flutter/material.dart';

import '../../../responsiveLayout.dart';
import 'homepage_container4_desktop.dart';
import 'homepage_container4_mobile.dart';
import 'homepage_container4_tablet.dart';


class HomepageContainer4 extends StatelessWidget {
  const HomepageContainer4({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer4Mobile(),
        tabletView: HomepageContainer4Tablet(),
        desktopView: HomepageContainer4Desktop(),
        largeScreenView: HomepageContainer4Desktop());
  }
}
