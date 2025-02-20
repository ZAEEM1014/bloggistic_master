import 'package:flutter/material.dart';

import '../../../responsiveLayout.dart';
import 'homepage_container5_desktop.dart';
import 'homepage_container5_mobile.dart';
import 'homepage_container5_tablet.dart';


class HomepageContainer5 extends StatelessWidget {
  const HomepageContainer5({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer5Mobile(),
        tabletView: HomepageContainer5Tablet(),
        desktopView: HomepageContainer5Desktop(),
        largeScreenView: HomepageContainer5Desktop());
  }
}
