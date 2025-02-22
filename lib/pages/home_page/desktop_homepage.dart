import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../controllers/home_page_controller_desktop.dart';
import '../../widgets/navbar/navbar.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({super.key});

  @override
  _DesktopHomepageState createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
  final ScrollController _scrollController = ScrollController();
  final HomePageController controller = Get.put(HomePageController());

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
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.widgets.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.blue),
          );
        }
        return Column(
          children: [
            Navbar(scrollToSection: scrollToSection), // ✅ Pass function to NavBar
            Expanded(
              child: ListView.builder(
                controller: _scrollController, // ✅ Attach ScrollController
                itemCount: controller.widgets.length,
                itemBuilder: (context, index) {
                  return controller.widgets[index];
                },
              ),
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your WhatsApp functionality here
        },
        backgroundColor: const Color(0xFF25D366), // WhatsApp green color
        child: const Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
          size: 34,
        ),
      ),
    );
  }
}
