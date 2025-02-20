import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/controllers/homepage_container2_smooth_horizontal_contarolling.dart';
import 'package:md_car_wash/utils/custom_title.dart';
import 'package:md_car_wash/models/Blogs.dart';

import '../../../models/Blogs.dart';
import '../../../utils/constants.dart';
import '../../BlogShowPage/BlogShowPage.dart';
import 'homepage_card_desktop.dart';

class HomepageContainer2Desktop extends StatefulWidget {
  const HomepageContainer2Desktop({super.key});

  @override
  _HomepageContainer2DesktopState createState() =>
      _HomepageContainer2DesktopState();
}

class _HomepageContainer2DesktopState extends State<HomepageContainer2Desktop>
    with TickerProviderStateMixin {
  late ScrollingController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(ScrollingController());
    controller.setupAnimationController(this);
    _setupCircularScrolling();
  }

  void _setupCircularScrolling() {
    controller.animationController.addListener(() {
      if (controller.scrollController.hasClients) {
        final maxScroll = controller.scrollController.position.maxScrollExtent;
        final currentScroll = controller.scrollController.offset;

        if (currentScroll >= maxScroll) {
          controller.scrollController.jumpTo(0); // Reset to start
        } else {
          controller.scrollController
              .jumpTo(currentScroll + 1); // Smoothly scroll
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 700,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTitle(title: "  BLOG-VIEW"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Dive into thought-provoking articles, expert insights, and trending topics, covering everything from \ninnovation to everyday experiences\n Lets read!!.... ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'montserrat',
              fontSize: 18
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: size.width <= 1920 ? size.width : Constants.desktopwidth,
              maxHeight: 450
            ),
            child: SingleChildScrollView(
              controller: controller.scrollController,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(), // Smoother manual scrolling
              child: Row(
                children: List.generate(10, (index) => _buildHomepageCard(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomepageCard(int index) {
    final colors = [
      Colors.lightBlue,
      Colors.lightGreen,
      Colors.greenAccent,
      Colors.blueGrey,
      Colors.lightBlueAccent,
      Colors.blueGrey,
      Colors.greenAccent,
    ];

    return Row(
      children: List.generate(BlogPosts.length, (index) {
        final blog = BlogPosts[index];
        return HomepageCardDesktop(
          image: blog.image ?? '',
          title: blog.title ?? 'No Title',
          description: blog.description ?? 'No Description',
          date: blog.date ?? 'No Date',
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlogShowPage(blog: blog),
              ),
            );
          },
          color: colors[index % colors.length],
        );
      }),
    );
  }

  @override
  void dispose() {
    controller.animationController.dispose();
    super.dispose();
  }
}
