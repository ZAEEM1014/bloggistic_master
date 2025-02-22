import 'package:flutter/material.dart';
import '../navbar/navLogo.dart';

class MobileSidebar extends StatelessWidget {
  final Function(double) scrollToSection; // ✅ Store the function

  const MobileSidebar({super.key, required this.scrollToSection}); // ✅ Accept as parameter

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: ListTile(
              title: const NavLogo(fontSize: 17),
              subtitle: const Text(
                "Bloggistic@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          _buildMenuItem(context, "Home", 0),
          _divider(),
          _buildMenuItem(context, "Blog-View", 665),
          _divider(),
          _buildMenuItem(context, "Blog-Write", 1300),
          _divider(),
          _buildMenuItem(context, "ABOUT US", 2100),
          _divider(),
          _buildMenuItem(context, "CONTACT US", 4400),
          _divider(),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, double position) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // ✅ Close sidebar
        scrollToSection(position); // ✅ Scroll to section
      },
    );
  }

  Widget _divider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey,
    );
  }
}
