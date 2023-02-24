// ignore_for_file: file_names

import 'package:mygithubwebpage/include/Rows/educationmain.dart';
import 'package:flutter/material.dart';

class EducationDesk extends StatelessWidget {
  const EducationDesk({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: const <Widget>[
          Expanded(child: EduDesk()),
        ],
      ),
    );
  }
}

class EducationMob extends StatelessWidget {
  const EducationMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          EduMob(),
        ],
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          EduTab(),
        ],
      ),
    );
  }
}
