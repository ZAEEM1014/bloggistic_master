import 'package:flutter/material.dart';


import '../../../responsiveLayout.dart';
import '../container7/homepage_container7_tablet.dart';
import 'homepage_container2_desktop.dart';
import 'hompage_container2_mobile.dart';
class HomepageContainer2 extends StatelessWidget {
  const HomepageContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileView: HompageContainer2Mobile(), tabletView: HomepageContainer2Tablet(), desktopView: HomepageContainer2Desktop(), largeScreenView: HomepageContainer2Desktop());
  }
}
