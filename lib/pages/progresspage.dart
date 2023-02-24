import 'package:mygithubwebpage/include/CenteringOfPages/proficiency.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ProgressBarMob(),
      desktop: const ProgressBarDesk(),
      tablet: const ProgressBarTab(),
    );
  }
}
