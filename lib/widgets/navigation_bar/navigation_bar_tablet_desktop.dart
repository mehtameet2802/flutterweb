import 'package:flutter/material.dart';
import 'package:web1/widgets/navigation_bar/navbar_item.dart';
import 'package:web1/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavbarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavbarItem(title: 'Episodes'),
              SizedBox(
                width: 60,
              ),
              NavbarItem(title: 'About')
            ],
          )
        ],
      ),
    );
  }
}
