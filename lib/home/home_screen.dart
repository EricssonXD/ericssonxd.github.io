import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) {
      return const Center(
        child: Text("Website Currently Under Construction"),
      );
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          background,
          Positioned(
            top: -0.05.sh,
            child: avatarButtons(),
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
                  "A Software Developer with Passion to Create",
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
      ),
    );
  }
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

avatarButtons() {
  return Builder(
    builder: (context) => SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: Stack(
        children: [
          // ElevatedButton(onPressed: () {}, child: const Text("FAQ")),
          // ElevatedButton(onPressed: () {}, child: const Text("LOL")),
          // ElevatedButton(onPressed: () {}, child: const Text("My projects")),
          Center(
            child: CircleAvatar(
              radius: 300.sp,
              foregroundImage: const AssetImage("assets/home/me.jpg"),
              backgroundColor: Colors.black,
              child: Container(
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: CustomTheme.white,
                    spreadRadius: 4,
                    blurRadius: 10,
                  ),
                ]),
              ),
            ),
          ),
          orbitButtons(
            alignment: Alignment(1000.w / (1.sw), 0.8.h),
            buttonText: "Experiences",
            buttonFunction: () {},
          ),
          orbitButtons(
            alignment: Alignment(-1000.w / (1.sw), -0.8.h),
            buttonText: "FAQ",
            buttonFunction: () {},
          ),
          orbitButtons(
            alignment: Alignment(1200.w / (1.sw), 0),
            buttonText: "Skills",
            buttonFunction: () {},
          ),
          orbitButtons(
            alignment: Alignment(-1200.w / (1.sw), 0),
            buttonText: "Placeholder",
            buttonFunction: () {},
          ),
          orbitButtons(
            alignment: Alignment(-1000.w / (1.sw), 0.8.h),
            buttonText: "Placeholder",
            buttonFunction: () {},
          ),
          orbitButtons(
            alignment: Alignment(1000.w / (1.sw), -0.8.h),
            buttonText: "My Projects",
            buttonFunction: () {},
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
            color: CustomTheme.white,
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
