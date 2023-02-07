import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/routes.dart';
import 'package:mygithubwebpage/misc/theme.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';

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
    tabController = TabController(length: _tabs.length, vsync: this);
    // tabController.addListener(_onUpdate);
    _controller.forward();
  }

  void _onUpdate(int index) {
    ref.read(navigationBarIndexProvider.notifier).state = index;
    context.goNamed(_tabs.values.elementAt(index));
  }

  @override
  void dispose() {
    tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 100),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, -1),
    end: Offset.zero,
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    tabController.index = ref.watch(navigationBarIndexProvider);
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
              for (var item in _tabs.keys)
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
  }
}

Map _tabs = {
  "Home": Routes.home,
  "My Projects": Routes.myProjects,
  "Experiences": Routes.experiences,
  "Skills": Routes.skills,
  "Achievements": Routes.achievements,
  "About Me": Routes.aboutMe,
  "Contacts": Routes.contacts,
};
