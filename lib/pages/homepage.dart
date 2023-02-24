import 'package:mygithubwebpage/configure/centeredview.dart';
import 'package:mygithubwebpage/include/homepage/homemain.dart';
import 'package:mygithubwebpage/include/navbar/drawer/drawernav.dart'
    as my_drawer;
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: const my_drawer.NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            Expanded(
              child: ScreenTypeLayout(
                mobile: const CenteredViewMob(child: HomeMobile()),
                desktop: const CenteredViewDesk(child: HomeDesktop()),
                tablet: const CenteredViewTab(child: HomeTab()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
