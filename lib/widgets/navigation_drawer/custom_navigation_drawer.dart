import 'package:flutter/material.dart';
import 'package:web1/widgets/navigation_drawer/drawer_item.dart';
import 'package:web1/widgets/navigation_drawer/navigation_drawer_header.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          )
        ],
      ),
      child: const Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
          ),
          DrawerItem(
            title: 'About',
            icon: Icons.help,
          )
        ],
      ),
    );
  }
}
