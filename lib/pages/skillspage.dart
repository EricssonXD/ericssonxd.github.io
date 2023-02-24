import 'package:mygithubwebpage/include/CenteringOfPages/skills_desk.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SkillsMob(),
      desktop: const SkillsDesk(),
      tablet: const SkillsTab(),
    );
  }
}
