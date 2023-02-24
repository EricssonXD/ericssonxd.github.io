// ignore_for_file: constant_identifier_names

import 'package:mygithubwebpage/configure/centeredview.dart';
import 'package:mygithubwebpage/include/CenteringOfPages/Education.dart';
import 'package:mygithubwebpage/include/Rows/contactpagemain.dart';
import 'package:mygithubwebpage/pages/achievementspage.dart';
import 'package:mygithubwebpage/pages/blogpage.dart';
import 'package:mygithubwebpage/pages/contactpage.dart';
import 'package:mygithubwebpage/pages/homepage.dart';
import 'package:mygithubwebpage/pages/skillspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

const String SkillsRoute = 'skills';
const String ProjectsRoute = 'projects';
const String EducationRoute = 'education';
const String AchievementsRoute = 'achievements';
const String ContactRoute = 'contact';
const String BlogRoute = 'blogs';
const String HomeRoute = 'Home';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomePage(), settings.name);
    case SkillsRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(child: SkillsPage()),
            tablet: const CenteredViewTab(child: SkillsPage()),
            mobile: const CenteredViewMob(child: SkillsPage()),
          ),
          settings.name);
    case ProjectsRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(
              child: BlogPage(),
            ),
            tablet: const CenteredViewTab(
              child: BlogPage(),
            ),
            mobile: const CenteredViewMob(
              child: BlogPage(),
            ),
          ),
          settings.name);
    case EducationRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(
              child: EducationDesk(),
            ),
            tablet: const CenteredViewTab(
              child: EducationTab(),
            ),
            mobile: const CenteredViewMob(
              child: EducationMob(),
            ),
          ),
          settings.name);
    case AchievementsRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(child: AchievementsPage()),
            tablet: const CenteredViewTab(child: AchievementsPage()),
            mobile: const CenteredViewMob(child: AchievementsPage()),
          ),
          settings.name);
    case ContactRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(child: ContactPageDesk()),
            tablet: const CenteredViewTab(child: ContactPage()),
            mobile: const CenteredViewMob(child: ContactPage()),
          ),
          settings.name);
    case BlogRoute:
      return _getPageRoute(
          ScreenTypeLayout(
            desktop: const CenteredViewDesk(
              child: BlogPage(),
            ),
            tablet: const CenteredViewTab(
              child: BlogPage(),
            ),
            mobile: const CenteredViewMob(
              child: BlogPage(),
            ),
          ),
          settings.name);
    default:
      return _getPageRoute(const HomePage(), settings.name);
  }
}

PageRoute _getPageRoute(Widget child, String? routeName) {
  return _FadeRoute(child: child, routeName: routeName ?? "");
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
