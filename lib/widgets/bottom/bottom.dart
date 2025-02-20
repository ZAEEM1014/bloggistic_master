import 'package:bloggistic_master/widgets/bottom/tablet_bottom.dart';
import 'package:flutter/material.dart';

import '../../responsiveLayout.dart';
import 'desktop_bottom.dart';
import 'mobile_bottom.dart';



class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: MobileBottom(),
        tabletView: TabletBottom(),
        desktopView: DesktopBottom(),
        largeScreenView: DesktopBottom());
  }
}
