import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/home_page/container1/homepage_container1.dart';
import '../pages/home_page/container2/homepage_container2.dart';
import '../pages/home_page/container3/homepage_container3.dart';
import '../pages/home_page/container4/homepage_container4.dart';
import '../pages/home_page/container6/homepage_container6.dart';
import '../pages/home_page/container7/homepage_container7.dart';
import '../utils/colors.dart';
import '../widgets/bottom/bottom.dart';


class HomePageController extends GetxController {
  final widgets = <Widget>[].obs;


  @override
  void onInit() {
    super.onInit();
    _loadInitalData();
  }

Future<void> _loadInitalData() async {
  await Future.delayed(const Duration(milliseconds: 30));
  widgets.addAll([
    HomepageContainer1(),
    _buildDivider(Get.size),
    HomepageContainer2(),
    _buildDivider(Get.size),
    HomepageContainer7(),
    _buildDivider(Get.size),

    HomepageContainer3(),
    _buildDivider(Get.size),
    HomepageContainer4(),
    _buildDivider(Get.size),

    HomepageContainer6(),
    Bottom()
  ]);
}

  static Widget _buildDivider(Size size) {
    return Container(
      width: size.width,
      height: 0.3,
      color: AppColors.primaryColor,
    );
  }

}