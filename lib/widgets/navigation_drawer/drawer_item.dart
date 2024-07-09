import 'package:flutter/material.dart';
import 'package:web1/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 60,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavbarItem(title: title)
        ],
      ),
    );
  }
}
