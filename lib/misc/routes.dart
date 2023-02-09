import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:mygithubwebpage/home/home_screen.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:mygithubwebpage/misc/widgets/navigationbar.dart';
import 'package:mygithubwebpage/pages/aboutme/aboutme_screen.dart';
import 'package:mygithubwebpage/pages/achievements/achievements_screen.dart';
import 'package:mygithubwebpage/pages/contacts/contacts_screen.dart';
import 'package:mygithubwebpage/pages/experiences/experiences_screen.dart';
import 'package:mygithubwebpage/pages/myprojects/myprojects_screen.dart';
import 'package:mygithubwebpage/pages/skills/skills_screen.dart';

import 'constants/constant_routes.dart';

final GlobalKey<NavigatorState> $routerkey = GlobalKey<NavigatorState>();
final GoRouter $rootRouter = GoRouter(
  navigatorKey: $routerkey,
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
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                    scale: animation.drive(
                      Tween<double>(
                        begin: 2,
                        end: 1,
                      ).chain(CurveTween(curve: Curves.easeIn)),
                    ),
                    child: child),
              );
            },
          ),
        ),
        ShellRoute(
          routes: [
            pageRoute(
              route: Routes.aboutMe,
              child: const AboutMeScreen(),
            ),
            pageRoute(
              route: Routes.myProjects,
              child: const MyProjectsScreen(),
            ),
            pageRoute(
              route: Routes.experiences,
              child: const ExperiencesScreen(),
            ),
            pageRoute(
              route: Routes.achievements,
              child: const AchievementsScreen(),
            ),
            pageRoute(
              route: Routes.contacts,
              child: const ContactsScreen(),
            ),
            pageRoute(
              route: Routes.skills,
              child: const SkillsScreen(),
            ),
          ],
          pageBuilder: (context, state, child) => CustomTransitionPage<void>(
            child: Stack(
              children: [
                background,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const TopNavigationBar(),
                    Expanded(
                      child: child,
                    ),
                  ],
                ),
              ],
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(
              opacity: animation,
              child: child,
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

GoRoute pageRoute({
  required String route,
  required Widget child,
}) {
  return GoRoute(
    path: route.addSlash,
    name: route,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(-1, 0),
            end: Offset.zero,
          ),
        ),
        child: child,
      ),
      key: state.pageKey,
      child: child,
    ),
  );
}

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

extension on String {
  String get addSlash => '/$this';
}
