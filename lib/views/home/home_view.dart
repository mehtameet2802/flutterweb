import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web1/views/home/home_content_desktop.dart';
import 'package:web1/views/home/home_content_mobile.dart';
import 'package:web1/widgets/centered_view/centered_view.dart';
import 'package:web1/widgets/navigation_bar/navigation_bar.dart';
import 'package:web1/widgets/navigation_drawer/custom_navigation_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer:
            sizingInformation.isMobile ? const CustomNavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const CustomNavigationBar(),
              Expanded(
                  child: ScreenTypeLayout.builder(
                mobile: (context) => const HomeContentMobile(),
                desktop: (context) => const HomeContentDesktop(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
