import 'package:flutter/material.dart';
import 'package:web1/widgets/call_to_action/call_to_action.dart';
import 'package:web1/widgets/centered_view/centered_view.dart';
import 'package:web1/widgets/course_details/course_details.dart';
import 'package:web1/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            CustomNavigationBar(),
            Expanded(
                child: Row(
              children: [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction(title: 'Join Course'),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
