import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

const String _sectionTitle = 'Proficiency';
const String _skill1 = 'Problem Solving';
const String _skill2 = 'Programming/Backend';
const String _skill3 = 'Frontend/Design';
const double _percent2 = 90;

class SkillBarDesk extends StatelessWidget {
  const SkillBarDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            _sectionTitle,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            _skill1,
            style: TextStyle(fontSize: 18),
          ),
          RoundedProgressBar(
            style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
            margin: const EdgeInsets.symmetric(vertical: 16),
            borderRadius: BorderRadius.circular(24),
            percent: 90,
          ),
          const Text(
            _skill2,
            style: TextStyle(fontSize: 18),
          ),
          RoundedProgressBar(
            style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
            margin: const EdgeInsets.symmetric(vertical: 16),
            borderRadius: BorderRadius.circular(24),
            percent: _percent2,
          ),
          const Text(
            _skill3,
            style: TextStyle(fontSize: 18),
          ),
          RoundedProgressBar(
            style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
            margin: const EdgeInsets.symmetric(vertical: 16),
            borderRadius: BorderRadius.circular(24),
            percent: 60,
          ),
        ],
      ),
    );
  }
}

class SkillBarTab extends StatelessWidget {
  const SkillBarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              _sectionTitle,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              _skill1,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: 90,
            ),
            const Text(
              _skill2,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: _percent2,
            ),
            const Text(
              _skill3,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class SkillBarMob extends StatelessWidget {
  const SkillBarMob({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              _sectionTitle,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              _skill1,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: 90,
            ),
            const Text(
              _skill2,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: _percent2,
            ),
            const Text(
              _skill3,
              style: TextStyle(fontSize: 18),
            ),
            RoundedProgressBar(
              style: RoundedProgressBarStyle(borderWidth: 0, widthShadow: 0),
              margin: const EdgeInsets.symmetric(vertical: 16),
              borderRadius: BorderRadius.circular(24),
              percent: 60,
            ),
          ],
        ),
      ),
    );
  }
}
