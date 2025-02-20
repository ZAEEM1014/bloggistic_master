import 'package:get/get.dart';

import '../utils/image_strings.dart';


class BackgroundSliderController extends GetxController {
  // List of image URLs or asset paths
  final List<String> images = [
    BloggisticImages.container1_image1,
    BloggisticImages.container1_image2,
    BloggisticImages.container1_image3,
    BloggisticImages.container1_image4,
  ];

  // Observable for the current index
  var currentIndex = 0.obs;

  // Method to update the index
  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
