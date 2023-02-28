import 'package:mygithubwebpage/configure/centeredview.dart';
import 'package:mygithubwebpage/configure/navigation_service.dart';
import 'package:mygithubwebpage/configure/routing.dart';
// ignore: avoid_web_libraries_in_flutter

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

class NavbarTbDt extends StatefulWidget {
  const NavbarTbDt({super.key});

  @override
  State<NavbarTbDt> createState() => _NavbarTbDtState();
}

class _NavbarTbDtState extends State<NavbarTbDt> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    // tabController.addListener(_onUpdate);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
              // onTap: () {
              //   html.window.location.reload();
              // },
              child: const NavbarLogo()),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: TabBar(
                    isScrollable: true,
                    controller: tabController,
                    onTap: (index) => locator<NavigationService>()
                        .navigateTo(_navList[index].route),
                    labelColor: Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                    tabs: [
                      for (_ItemInfo item in _navList) ...[
                        Tab(
                          child: Text(
                            item.title,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                      // NavbarItem('Home', HomeRoute),
                    ],
                  ),
                ),
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
              // onTap: () {
              //   html.window.location.reload();
              // },
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

class _ItemInfo {
  final String title;
  final String route;

  const _ItemInfo({
    required this.title,
    required this.route,
  });
}

const List<_ItemInfo> _navList = [
  _ItemInfo(
    title: "Home",
    route: HomeRoute,
  ),
  _ItemInfo(
    title: "Skills",
    route: SkillsRoute,
  ),
  _ItemInfo(
    title: "Education",
    route: EducationRoute,
  ),
  _ItemInfo(
    title: "Achievements",
    route: AchievementsRoute,
  ),
  _ItemInfo(
    title: "Contact",
    route: ContactRoute,
  ),
];
