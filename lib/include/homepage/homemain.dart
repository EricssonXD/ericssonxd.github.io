import 'package:flutter/gestures.dart';
import 'package:mygithubwebpage/include/CenteringOfPages/Achievement.dart';
import 'package:mygithubwebpage/include/CenteringOfPages/ContactCenter.dart';
import 'package:mygithubwebpage/include/CenteringOfPages/Education.dart';
import 'package:mygithubwebpage/include/CenteringOfPages/skills_desk.dart';
import 'package:mygithubwebpage/include/Rows/contactpagemain.dart';
import 'package:mygithubwebpage/include/imagesmain/images.dart';
import 'package:mygithubwebpage/include/Rows/progressbarmain.dart';
import 'package:mygithubwebpage/include/Rows/skillslogosmain.dart';
import 'package:mygithubwebpage/include/Rows/welcomepagemain.dart';
import 'package:mygithubwebpage/pages/footer.dart';
import 'package:mygithubwebpage/pages/progresspage.dart';
import 'package:mygithubwebpage/pages/welcome.dart';
import 'package:flutter/material.dart';

final _deskContent = [
  Row(
    children: const [
      Expanded(child: WelcomePage()),
      Expanded(child: OneDesk()),
    ],
  ),
  Row(
    children: const [
      Expanded(child: TwoDesk()),
      Expanded(child: SkillsLogoDesk()),
    ],
  ),
  Row(
    children: const [
      Expanded(child: SkillBarDesk()),
      Expanded(child: ThreeDesk()),
    ],
  ),
  const EducationDesk(),
  const AchievementDesk(),
  // const BlogCenterDesk(),
  Row(
    children: const [
      Expanded(child: ContactPageDesk()),
      Expanded(child: FourDesk()),
    ],
  ),
  // const SizedBox(
  //   height: 25,
  // ),
  // const FooterPage(),
];

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Desktop");
    return SafeArea(
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          addAutomaticKeepAlives: true,
          addRepaintBoundaries: true,
          itemCount: _deskContent.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: _deskContent[index],
          ),
        ),
      ),
    );
  }
}

final _mobContent = [
  const WelcomePageMob(),
  const OneMob(),
  const SkillsMob(),
  const ProgressPage(),
  const EducationMob(),
  const AchievementMob(),
  // BlogCenterMob(),
  const ContactCenterMob(),
  const SizedBox(
    height: 50,
  ),
  const FooterPage()
];

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Mobile");
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        itemCount: _mobContent.length,
        itemBuilder: (context, index) => _mobContent[index],
      ),
    );
  }
}

final _tabContent = [
  const WelcomePageTab(),
  const OneTab(),
  const SkillsTab(),
  const ProgressPage(),
  const EducationTab(),
  const AchievementTab(),
  // BlogCenterTab(),
  const ContactCenterTab(),
  const SizedBox(
    height: 50,
  ),
  const FooterMob(),
];

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Tablet");
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        addAutomaticKeepAlives: true,
        addRepaintBoundaries: true,
        itemCount: _tabContent.length,
        itemBuilder: (context, index) => _tabContent[index],
      ),
    );
  }
}
