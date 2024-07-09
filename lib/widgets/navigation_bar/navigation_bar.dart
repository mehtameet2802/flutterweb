import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web1/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:web1/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      tablet: (context) => const NavigationBarTabletDesktop(),
      desktop: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
