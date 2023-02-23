import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/constants/constant_routes.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopNavigationBar extends StatefulHookConsumerWidget {
  const TopNavigationBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TopNavigationBarState();
}

class _TopNavigationBarState extends ConsumerState<TopNavigationBar>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: navbarTabs.length, vsync: this);
    // tabController.addListener(_onUpdate);
    _controller.forward();
  }

  void _onUpdate(int index) {
    ref.read(navigationBarIndexProvider.notifier).state = index;
    String target = navbarTabs.values.elementAt(index);
    if (target == Routes.home) {
      context.goNamed(target);
      return;
    }
    context.goNamed(target);
  }

  @override
  void dispose() {
    tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    tabController.index = ref.watch(navigationBarIndexProvider);
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return SlideTransition(
        position: _offsetAnimation,
        child: Padding(
          padding: EdgeInsets.only(top: 0.03.sh, bottom: 0.01.sh),
          child: SizedBox(
            width: 1.w / 0.0000006.sw,
            child: TabBar(
              unselectedLabelColor: CustomTheme.white,
              labelColor: CustomTheme.gold_light,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(),
              controller: tabController,
              indicatorColor: CustomTheme.gold_light,
              onTap: _onUpdate,
              tabs: <Widget>[
                for (var item in navbarTabs.keys)
                  Tab(
                    child: Text(
                      item,
                    ),
                  )
              ],
            ),
          ),
        ),
      );
    });
  }
}

const Map navbarTabs = {
  "Home": Routes.home,
  "My Projects": Routes.myProjects,
  "Experiences": Routes.experiences,
  "Skills": Routes.skills,
  "Achievements": Routes.achievements,
  "About Me": Routes.aboutMe,
  "Contacts": Routes.contacts,
};
