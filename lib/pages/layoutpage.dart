import 'package:mygithubwebpage/configure/navigation_service.dart';
import 'package:mygithubwebpage/include/navbar/drawer/drawernav.dart'
    as my_drawer;
import 'package:mygithubwebpage/include/navbar/navigationbar.dart' as my_navbar;
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mygithubwebpage/configure/routing.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: const my_drawer.NavigationDrawer(),
        endDrawerEnableOpenDragGesture: false,
        body: Column(
          children: <Widget>[
            const my_navbar.NavigationBar(),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            )
          ],
        ),
      ),
    );
  }
}
