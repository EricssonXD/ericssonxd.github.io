import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';
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

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        child: DynMouseScroll(
          mobilePhysics: const AlwaysScrollableScrollPhysics(),
          durationMS: 300,
          builder: (context, controller, physics) => SingleChildScrollView(
            physics: physics,
            controller: controller,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: const <Widget>[
                          Expanded(child: WelcomePage()),
                          Expanded(child: OneDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: const <Widget>[
                          Expanded(child: TwoDesk()),
                          Expanded(child: SkillsLogoDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: const <Widget>[
                          Expanded(child: SkillBarDesk()),
                          Expanded(child: ThreeDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: const [
                          Expanded(child: EducationDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: const [
                          Expanded(child: AchievementDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                      // Row(
                      //   children: const [
                      //     Expanded(child: BlogCenterDesk()),
                      //   ],
                      // ),
                      const SizedBox(
                        height: 75,
                      ),
                      Row(
                        children: const [
                          Expanded(child: ContactPageDesk()),
                          Expanded(child: FourDesk()),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: const [
                          Expanded(child: FooterPage()),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const <Widget>[
                  WelcomePageMob(),
                  OneMob(),
                  SkillsMob(),
                  ProgressPage(),
                  EducationMob(),
                  AchievementMob(),
                  // BlogCenterMob(),
                  ContactCenterMob(),
                  SizedBox(
                    height: 50,
                  ),
                  FooterPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const <Widget>[
                  WelcomePageTab(),
                  OneTab(),
                  SkillsTab(),
                  ProgressPage(),
                  EducationTab(),
                  AchievementTab(),
                  // BlogCenterTab(),
                  ContactCenterTab(),
                  SizedBox(
                    height: 50,
                  ),
                  FooterMob(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
