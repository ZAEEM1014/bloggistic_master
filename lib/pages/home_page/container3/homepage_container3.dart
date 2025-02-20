import 'package:flutter/material.dart';

import '../../../responsiveLayout.dart';
import 'homepage_container3_desktop.dart';
import 'homepage_container3_mobile.dart';
import 'homepage_container3_tablet.dart';

class HomepageContainer3 extends StatelessWidget {
  const HomepageContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: HomepageContainer3Mobile(),
      tabletView: HomepageContainer3Tablet(),
      desktopView: HomepageContainer3Desktop(),
      largeScreenView: HomepageContainer3Desktop(),
    );
  }
}
