import 'package:flutter/material.dart';
import 'package:web1/widgets/call_to_action/call_to_action.dart';
import 'package:web1/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
          CallToAction(title: 'Join Course'),
        ],
      ),
    );
  }
}
