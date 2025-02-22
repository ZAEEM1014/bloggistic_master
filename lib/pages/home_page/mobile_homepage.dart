import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/home_page_controller_desktop.dart';
import '../../widgets/navbar/navLogo.dart';
import '../../widgets/navbar/navbar.dart';
import '../../widgets/sidebar/mobilesidebar.dart';
import '../../widgets/sidebar/tabletsidebar.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({super.key});

  @override
  _MobileHomepageState createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  final HomePageController controller = Get.put(HomePageController());
  final ScrollController _scrollController = ScrollController();

  void scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.centerRight,
          child: NavLogo(fontSize: 18),
        ),
      ),
      drawer: MobileSidebar(scrollToSection: scrollToSection), // ✅ Pass function
      body: Obx(() {
        if (controller.widgets.isEmpty) {
          return const Center(child: CircularProgressIndicator(color: Colors.blue));
        }
        return ListView.builder(
          controller: _scrollController,
          itemCount: controller.widgets.length,
          itemBuilder: (context, index) => controller.widgets[index],
        );
      }),
    );
  }
}
