import 'package:mygithubwebpage/configure/centeredview.dart';
import 'package:mygithubwebpage/configure/navigation_service.dart';
import 'package:mygithubwebpage/configure/routing.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'logo/navbarlogo.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavbarItem(this.title, this.navigationPath, {super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const CenteredViewMob(child: NavbarMob()),
      tablet: const CenteredViewTab(child: NavbarMob()),
      desktop: const CenteredViewDesk(child: NavbarTbDt()),
    );
  }
}

class NavbarTbDt extends StatelessWidget {
  const NavbarTbDt({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
              onTap: () {
                html.window.location.reload();
              },
              child: const NavbarLogo()),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const NavbarItem('Home', HomeRoute),
                const SizedBox(
                  width: 30,
                ),
                const NavbarItem('Skills', SkillsRoute),
                const SizedBox(
                  width: 30,
                ),
                const NavbarItem('Education', EducationRoute),
                const SizedBox(
                  width: 30,
                ),
                const NavbarItem('Achievements', AchievementsRoute),
                const SizedBox(
                  width: 30,
                ),
                // const NavbarItem('Blogs', BlogRoute),
                // const SizedBox(
                //   width: 30,
                // ),
                const NavbarItem('Contact', ContactRoute),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    AdaptiveTheme.of(context).toggleThemeMode();
                  },
                  icon: const Icon(Icons.brightness_3, size: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavbarMob extends StatelessWidget {
  const NavbarMob({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
              onTap: () {
                html.window.location.reload();
              },
              child: const NavbarLogo()),
          Expanded(
              child: Container(
            width: 100,
          )),
          IconButton(
            alignment: Alignment.topRight,
            onPressed: () {
              AdaptiveTheme.of(context).toggleThemeMode();
            },
            icon: const Icon(Icons.brightness_3, size: 25),
          ),
          IconButton(
            alignment: Alignment.topRight,
            icon: const Icon(
              FontAwesomeIcons.bars,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
