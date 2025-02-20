import 'package:flutter/material.dart';

import '../navbar/navLogo.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            height: 70, // Set the desired height
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: ListTile(
              title: NavLogo(fontSize: 17),
              subtitle: const Text(
                "Bloggistic@gmail,com",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
       ListTile(
         title: Text("Home"),
         onTap: (){},
       ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Blog-View"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Blog-Write"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),

          ListTile(
            title: Text("ABOUT US"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("CONTACT US"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    )
    ;
  }
}
