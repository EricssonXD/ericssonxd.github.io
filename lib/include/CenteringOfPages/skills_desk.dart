import 'package:mygithubwebpage/include/Rows/skillslogosmain.dart';
import 'package:mygithubwebpage/include/imagesmain/images.dart';
import 'package:flutter/material.dart';

class SkillsDesk extends StatelessWidget {
  const SkillsDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: const <Widget>[
          Expanded(child: TwoDesk()),
          Expanded(child: SkillsLogoDesk()),
        ],
      ),
    );
  }
}

class SkillsMob extends StatelessWidget {
  const SkillsMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SkillsLogoMob(),
          TwoMob(),
        ],
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SkillsLogoTab(),
          TwoTab(),
        ],
      ),
    );
  }
}
