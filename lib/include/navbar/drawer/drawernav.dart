import 'package:mygithubwebpage/configure/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../navigationbar.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: 300,
        child: Column(
          children: const <Widget>[
            DrawerItem('Home', FontAwesomeIcons.house, HomeRoute),
            DrawerItem('Skills', FontAwesomeIcons.listCheck, SkillsRoute),
            DrawerItem(
                'Education', FontAwesomeIcons.graduationCap, EducationRoute),
            // DrawerItem(
            //     'Open Source', FontAwesomeIcons.folderOpen, ProjectsRoute),
            DrawerItem(
                'Achievements', FontAwesomeIcons.trophy, AchievementsRoute),
            // DrawerItem('Blogs', FontAwesomeIcons.bloggerB, BlogRoute),
            DrawerItem('Contact Me', FontAwesomeIcons.user, ContactRoute),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavbarItem(title, navigationPath),
        ],
      ),
    );
  }
}
