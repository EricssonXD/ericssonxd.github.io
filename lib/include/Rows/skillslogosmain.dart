import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mygithubwebpage/misc/icomoon_icons.dart';

const String titleText = "What I Do";
const String subtitleText =
    "I work hard to create Perfect Programs so everything would be easier for me in the Future";
const String description1 = "⚡ Create Solutions to Problems by Coding";
const String description2 = "";
// "⚡ Progressive Web Applications ( PWA ) in normal and SPA Stacks";
const String description3 = "";
// "⚡ Integration of third party services such as Firebase/ AWS / Digital Ocean";
const List<IconData> iconList = [
  CustomIcons.flutter,
  FontAwesomeIcons.python,
  FontAwesomeIcons.github,
  FontAwesomeIcons.linux,
  FontAwesomeIcons.docker,
  CustomIcons.cplusplus,
];

class SkillsLogoDesk extends StatelessWidget {
  const SkillsLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            titleText,
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            subtitleText,
            style: TextStyle(
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 5,
            children: [
              for (IconData data in iconList) ...[
                _SkillsIcon(
                  width: 80,
                  height: 80,
                  iconData: data,
                ),
              ],
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            description1,
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            description2,
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            description3,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _SkillsIcon extends StatelessWidget {
  final double width;
  final double height;
  final IconData iconData;
  const _SkillsIcon({
    required this.width,
    required this.height,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: Icon(
          iconData,
          size: 60,
          color: Colors.grey,
        ));
  }
}

class SkillsLogoTab extends StatelessWidget {
  const SkillsLogoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              titleText,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 50),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              subtitleText,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.end,
              spacing: 5,
              children: [
                for (IconData data in iconList) ...[
                  _SkillsIcon(
                    width: 80,
                    height: 80,
                    iconData: data,
                  ),
                ],
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              description1,
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              description2,
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              description3,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsLogoMob extends StatelessWidget {
  const SkillsLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          children: <Widget>[
            const Text(
              titleText,
              style: TextStyle(
                  fontWeight: FontWeight.w800, height: 1.0, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              subtitleText,
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.end,
              spacing: 5,
              children: [
                for (IconData data in iconList) ...[
                  _SkillsIcon(
                    width: 80,
                    height: 80,
                    iconData: data,
                  ),
                ],
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              description1,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              description2,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              description3,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
