import 'package:bloggistic_master/pages/home_page/tablet_homepage.dart';
import 'package:flutter/cupertino.dart';

import '../../responsiveLayout.dart';
import 'desktop_homepage.dart';
import 'mobile_homepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileHomepage(),
      tabletView: TabletHomepage(),
      desktopView: DesktopHomepage(),
      largeScreenView: DesktopHomepage(),
    );
  }
}
