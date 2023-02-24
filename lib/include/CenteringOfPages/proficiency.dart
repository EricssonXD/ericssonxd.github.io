import 'package:mygithubwebpage/include/Rows/progressbarmain.dart';
import 'package:mygithubwebpage/include/imagesmain/images.dart';
import 'package:flutter/material.dart';

class ProgressBarDesk extends StatelessWidget {
  const ProgressBarDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: const <Widget>[
          SkillBarDesk(),
          ThreeDesk(),
        ],
      ),
    );
  }
}

class ProgressBarTab extends StatelessWidget {
  const ProgressBarTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SkillBarTab(),
          ThreeTab(),
        ],
      ),
    );
  }
}

class ProgressBarMob extends StatelessWidget {
  const ProgressBarMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          SkillBarMob(),
          ThreeMob(),
        ],
      ),
    );
  }
}
