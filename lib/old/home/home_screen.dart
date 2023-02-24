import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../misc/constants/constant_routes.dart';
import '../misc/theme.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) {
      return Center(
        child: Text(
          "Website Currently Under Construction",
          style: TextStyle(
            fontSize: 100.sp,
            fontWeight: FontWeight.bold,
            color: CustomTheme.white,
            shadows: const [
              Shadow(
                blurRadius: 10,
                color: CustomTheme.gold_light,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -0.05.sh,
          child: avatarAndButtons(),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.08.sh),
              child: Text(
                "I am Ericsson",
                style: TextStyle(
                  fontSize: 50.sp,
                  color: CustomTheme.white,
                  shadows: const [
                    Shadow(
                      // offset: Offset(3, 3),
                      color: Colors.black,
                      blurRadius: 4,
                    )
                  ],
                ),
              ),
            ),
            // navigationBar(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 0.08.sh),
              child: Text(
                "A Software Developer with a Passion to Create",
                style: TextStyle(
                  fontSize: 50.sp,
                  color: CustomTheme.white,
                  shadows: const [
                    Shadow(
                      // offset: Offset(3, 3),
                      color: Colors.black,
                      blurRadius: 4,
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget navigationBar() => Card(
        margin: const EdgeInsets.all(20),
        color: CustomTheme.gold_light,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.computer),
            ),
            Text(
              "Ericsson C",
              style: navbarTextStyle(),
            ),
            const Spacer(),
            SizedBox(
              child: TextButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "About Me",
                    style: navbarTextStyle().copyWith(fontSize: 25.sp),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      );

  Widget background = Stack(
    children: [
      Container(
        color: CustomTheme.grey,
      ),
      ClipPath(
        clipper: _BackgroundClip(),
        child: Container(
          color: CustomTheme.cyan,
        ),
      ),
    ],
  );

  avatarAndButtons() {
    return Builder(
      builder: (context) => SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Stack(
          children: [
            background,
            // ElevatedButton(onPressed: () {}, child: const Text("FAQ")),
            // ElevatedButton(onPressed: () {}, child: const Text("LOL")),
            // ElevatedButton(onPressed: () {}, child: const Text("My projects")),
            Center(
              child: CircleAvatar(
                radius: 300.sp,
                // foregroundImage: const AssetImage("assets/home/me.jpg"),
                backgroundColor: Colors.black,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: CustomTheme.homeShadowColor,
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            orbitButtons(
              alignment: Alignment(1000.w / (1.sw), -0.8.h),
              buttonText: "My Projects",
              buttonFunction: () {
                context.goNamed(Routes.myProjects);
              },
            ),
            orbitButtons(
              alignment: Alignment(1200.w / (1.sw), 0),
              buttonText: "Skills",
              buttonFunction: () {
                context.goNamed(Routes.skills);
              },
            ),
            orbitButtons(
              alignment: Alignment(1000.w / (1.sw), 0.8.h),
              buttonText: "Experiences",
              buttonFunction: () {
                context.goNamed(Routes.experiences);
              },
            ),
            orbitButtons(
              alignment: Alignment(-1000.w / (1.sw), -0.8.h),
              buttonText: "About Me",
              buttonFunction: () {
                context.goNamed(Routes.aboutMe);
              },
            ),
            orbitButtons(
              alignment: Alignment(-1200.w / (1.sw), 0),
              buttonText: "Achievements",
              buttonFunction: () {
                context.goNamed(Routes.achievements);
              },
            ),
            orbitButtons(
              alignment: Alignment(-1000.w / (1.sw), 0.8.h),
              buttonText: "Contact",
              buttonFunction: () {
                context.goNamed(Routes.contacts);
              },
            )
          ],
        ),
      ),
    );
  }

  Align orbitButtons({
    required Alignment alignment,
    required String buttonText,
    void Function()? buttonFunction,
  }) {
    return Align(
      alignment: alignment,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: CustomTheme.homeShadowColor,
              spreadRadius: 2,
              blurRadius: 10,
            )
          ],
          // border: Border.all(),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          onPressed: buttonFunction,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              buttonText,
              style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  // color: CustomTheme.grey,
                  // fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  navbarTextStyle() => GoogleFonts.abrilFatface(
        textStyle: TextStyle(
          // color: CustomTheme.grey,
          // fontWeight: FontWeight.bold,
          fontSize: 30.sp,
        ),
      );
}

class _BackgroundClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h * 5 / 6);
    path.lineTo(w, h / 6);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
