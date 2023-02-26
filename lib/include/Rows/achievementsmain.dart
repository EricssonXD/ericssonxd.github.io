import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AchieveDesk extends StatelessWidget {
  const AchieveDesk({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(
      width: 25,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Achievements 🏆',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
          style: TextStyle(color: Colors.grey, fontSize: 22),
        ),
        const SizedBox(
          height: 25,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: 350,
            width: 1.sw,
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 30),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                for (Widget i in _AchievementItemBuilder(
                  divier: divider,
                  itemWidth: 450,
                  itemHeight: 300,
                  iconSize: 170,
                ).build())
                  i,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AchieveTab extends StatelessWidget {
  const AchieveTab({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(
      height: 25,
    );
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Achievements 🏆',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    for (Widget i in _AchievementItemBuilder(
                      divier: divider,
                      itemWidth: 450,
                      itemHeight: 300,
                      iconSize: 170,
                    ).build())
                      i,
                    divider,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AchieveMob extends StatelessWidget {
  const AchieveMob({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = SizedBox(
      height: 25,
    );
    return SingleChildScrollView(
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Achievements 🏆',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Center(
                child: Column(
                  children: [
                    for (Widget i in _AchievementItemBuilder(
                      divier: divider,
                      itemWidth: 400,
                      itemHeight: 250,
                      iconSize: 120,
                    ).build())
                      i,
                    divider,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AchievementItemBuilder {
  final double itemWidth;
  final double itemHeight;
  final double iconSize;
  final Widget divier;
  // final String buttonText;
  // final String titleText;
  late final List<_AchievementItem> items;

  _AchievementItemBuilder({
    required this.iconSize,
    required this.itemHeight,
    required this.itemWidth,
    required this.divier,
  }) {
    items = [
      _AchievementItem(
        icon: Padding(
          padding: EdgeInsets.only(right: iconSize / 3.2),
          child: Icon(
            FontAwesomeIcons.dumbbell,
            size: iconSize,
            color: Colors.black,
          ),
        ),
        inkWell:
            inkWellBuilder("https://github.com/EricssonXD/Workout-Planner"),
        text: itemTitle("Workout Planner App"),
      ),
      _AchievementItem(
        icon: Padding(
          padding: EdgeInsets.only(right: iconSize / 5),
          child: Icon(
            FontAwesomeIcons.youtube,
            size: iconSize,
            color: Colors.redAccent,
          ),
        ),
        inkWell: inkWellBuilder(
            "https://github.com/EricssonXD/CRCKC-Livestream-Helper"),
        text: itemTitle("Livestream Helper"),
      ),
      _AchievementItem(
        icon: Icon(
          FontAwesomeIcons.whatsapp,
          size: iconSize,
          color: Colors.green,
        ),
        // inkWell: inkWellBuilder("https://ericssonxd.github.io"),
        text: itemTitle("Custom Whatsapp API"),
      ),
    ];
  }

  Text itemTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      textAlign: TextAlign.center,
    );
  }

  InkWell inkWellBuilder(
    String link, {
    String text = 'Check it out !',
  }) {
    return InkWell(
        onTap: () {
          js.context.callMethod("open", [link]);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.green[900]),
          textAlign: TextAlign.center,
        ));
  }

  List<Widget> build() {
    List<Widget> list = [];
    for (_AchievementItem i in items) {
      list.add(divier);
      list.add(buildItem(i));
    }
    return list;
  }

  Container buildItem(_AchievementItem item) {
    return Container(
      width: itemWidth,
      height: itemHeight,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white.withOpacity(0.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 5,
              offset: const Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          item.icon,
          const SizedBox(
            height: 5,
          ),
          item.text,
          if (item.inkWell != null) item.inkWell!,
        ],
      ),
    );
  }
}

class _AchievementItem {
  final Widget icon;
  final Widget? inkWell;
  final Widget text;
  _AchievementItem({
    required this.icon,
    // ignore: unused_element
    this.inkWell,
    required this.text,
  });
}
