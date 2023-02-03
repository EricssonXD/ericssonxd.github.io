import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:mygithubwebpage/misc/widgets/navigationbar.dart';
import 'package:mygithubwebpage/pages/aboutme/aboutme_screen.dart';
import 'package:mygithubwebpage/pages/myprojects/myprojects_screen.dart';

import '../home/home_screen.dart';

final GoRouter $rootRouter = GoRouter(
  initialLocation: Routes.home.addSlash,
  routes: [
    ShellRoute(
        routes: [
          GoRoute(
            path: Routes.home.addSlash,
            name: Routes.home,
            builder: (context, state) => const HomeScreen(),
          ),
          ShellRoute(
            routes: [
              GoRoute(
                path: Routes.aboutMe.addSlash,
                name: Routes.aboutMe,
                builder: (context, state) {
                  return const AboutMeScreen();
                },
              ),
              GoRoute(
                path: Routes.myProjects.addSlash,
                name: Routes.myProjects,
                builder: (context, state) => const MyProjectsScreen(),
              ),
            ],
            builder: (context, state, child) => Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TopNavigationBar(),
                Expanded(
                  child: child,
                ),
              ],
            ),
          ),
        ],
        builder: (context, state, child) {
          return Scaffold(
            body: Stack(
              children: [
                background,
                child,
              ],
            ),
          );
        })
  ],
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

abstract class Routes {
  static String get aboutMe => 'aboutme';
  static String get home => 'home';
  static String get myProjects => 'myprojects';
  static String get skills => 'skills';
  static String get experiences => 'experiences';
}

extension on String {
  String get addSlash => '/$this';
}
