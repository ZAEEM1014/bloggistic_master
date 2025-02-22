import 'package:bloggistic_master/pages/home_page/container1/homepage_container1_desktop.dart';
import 'package:bloggistic_master/pages/home_page/container2/homepage_container2_desktop.dart';
import 'package:bloggistic_master/pages/home_page/container3/homepage_container3_desktop.dart';
import 'package:bloggistic_master/pages/home_page/container7/homepage_container7_desktop.dart';
import 'package:bloggistic_master/pages/home_page/homepage.dart';
import 'package:bloggistic_master/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

import 'customScrollBehaviour.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double speedFactor = MediaQuery.of(context).size.width < 600 ? 2.0 : 5.0;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bloggistic-master",
      scrollBehavior: CustomScrollBehavior(speedFactor: speedFactor),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'actor',
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const Homepage(),
      getPages: [
        GetPage(name: '/', page: () => const Homepage()),
        GetPage(name: '/HomepageContainer1Desktop', page: () => HomepageContainer1Desktop()),
        GetPage(name: '/HomepageContainer2Desktop', page: () => HomepageContainer2Desktop()),
        GetPage(name: '/HomepageContainer7Desktop', page: () => HomepageContainer7Desktop()),
        GetPage(name: '/HomepageContainer3Desktop', page: () => HomepageContainer3Desktop()),
      ],
    );
  }
}


