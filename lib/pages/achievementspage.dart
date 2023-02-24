import 'package:mygithubwebpage/include/CenteringOfPages/Achievement.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const AchievementDesk(),
      tablet: const AchievementTab(),
      mobile: const AchievementMob(),
    );
  }
}
