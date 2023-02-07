import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mygithubwebpage/home/home_screen.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:mygithubwebpage/misc/widgets/navigationbar.dart';
import 'package:mygithubwebpage/pages/aboutme/aboutme_screen.dart';
import 'package:mygithubwebpage/pages/myprojects/myprojects_screen.dart';

final GoRouter $rootRouter = GoRouter(
  initialLocation: Routes.home.addSlash,
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          path: Routes.home.addSlash,
          name: Routes.home,
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const HomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              if (state.fullpath != Routes.home.addSlash) {
                return ScaleTransition(
                    scale: animation.drive(
                      Tween<double>(
                        begin: 1,
                        end: 0,
                      ).chain(CurveTween(curve: Curves.easeIn)),
                    ),
                    child: child);
              } else {
                return ScaleTransition(
                    scale: animation.drive(
                      Tween<double>(
                        begin: 2,
                        end: 1,
                      ).chain(CurveTween(curve: Curves.easeIn)),
                    ),
                    child: child);
              }
            },
          ),
        ),
        ShellRoute(
          routes: [
            GoRoute(
              path: Routes.aboutMe.addSlash,
              name: Routes.aboutMe,
              // pageBuilder: (context, state) => NoTransitionPage<void>(
              //   child: const AboutMeScreen(),
              //   key: state.pageKey,
              // ),
              builder: (context, state) {
                return const AboutMeScreen();
              },
            ),
            GoRoute(
              path: Routes.myProjects.addSlash,
              name: Routes.myProjects,
              builder: (context, state) {
                return const MyProjectsScreen();
              },
            ),
          ],
          pageBuilder: (context, state, child) => NoTransitionPage(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (state.fullpath != Routes.home.addSlash)
                  const TopNavigationBar(),
                Expanded(
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ],
      builder: (context, state, child) {
        return Scaffold(
          body: HeroControllerScope(
            controller: MaterialApp.createMaterialHeroController(),
            child: LayoutBuilder(
              builder: (context, constrains) {
                return Stack(
                  children: [
                    background,
                    child,
                  ],
                );
              },
            ),
          ),
        );
      },
    )
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
  static String get achievements => 'achievements';
  static String get contacts => 'contacts';
}

extension on String {
  String get addSlash => '/$this';
}
