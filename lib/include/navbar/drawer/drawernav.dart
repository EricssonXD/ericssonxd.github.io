import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mygithubwebpage/configure/navigation_service.dart';
import 'package:mygithubwebpage/configure/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 0.6.sw < 304 ? 0.6.sw : 304,
      child: SizedBox(
        width: 300,
        child: ListView(
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
    return ListTile(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
        Navigator.of(context).pop();
      },
      title: Padding(
        padding: const EdgeInsets.only(left: 15, top: 30, bottom: 30),
        child: Row(
          children: <Widget>[
            Icon(icon),
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 18.sp < 18 ? 18.sp : 18),
            ),
          ],
        ),
      ),
    );
  }
}
