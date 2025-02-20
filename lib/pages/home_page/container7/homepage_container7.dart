import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_container2_desktop.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_container2_tablet.dart';
import 'package:md_car_wash/pages/home_page/container7/homepage_container7_desktop.dart';
import 'package:md_car_wash/responsiveLayout.dart';

import 'hompage_container7_mobile.dart';
class HomepageContainer7 extends StatelessWidget {
  const HomepageContainer7({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileView: HompageContainer7Mobile(), tabletView: HomepageContainer2Tablet(), desktopView: HomepageContainer7Desktop(), largeScreenView: HomepageContainer7Desktop());
  }
}
