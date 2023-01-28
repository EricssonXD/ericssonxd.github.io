import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mygithubwebpage/misc/theme.dart';

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
        children: [
          background,
          Column(
            children: [
              // const Padding(padding: EdgeInsets.all(30)),
              navigationBar,
            ],
          )
        ],
      ),
    );
  }
}

Widget navigationBar = Card(
  margin: const EdgeInsets.all(20),
  color: CustomTheme.gold_light,
  child: Row(
    children: [
      const Spacer(),
      TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "About Me",
            style: TextStyle(
              color: CustomTheme.grey,
              fontSize: 30.sp,
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
