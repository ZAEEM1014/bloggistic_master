import 'package:flutter/material.dart';


import '../../../responsiveLayout.dart';
import '../container2/homepage_container2_tablet.dart';
import 'homepage_container7_desktop.dart';
import 'hompage_container7_mobile.dart';
class HomepageContainer7 extends StatelessWidget {
  const HomepageContainer7({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileView: HompageContainer7Mobile(), tabletView: HomepageContainer2Tablet(), desktopView: HomepageContainer7Desktop(), largeScreenView: HomepageContainer7Desktop());
  }
}
