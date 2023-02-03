import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';
import 'package:mygithubwebpage/misc/routes.dart';
import 'package:mygithubwebpage/misc/theme.dart';

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
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(_onUpdate);
    _controller.forward();
  }

  void _onUpdate() {
    ref.read(navigationBarIndexProvider.notifier).state = tabController.index;
    switch (tabController.index) {
      case 0:
        context.goNamed(Routes.home);
        break;
      case 1:
        context.goNamed(Routes.myProjects);
        break;
      case 2:
        context.goNamed(Routes.aboutMe);
        break;
      default:
        break;
    }
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
          width: 1.w / 0.0000015.sw,
          child: TabBar(
            unselectedLabelColor: CustomTheme.white,
            labelColor: CustomTheme.gold_light,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(),
            controller: tabController,
            indicatorColor: CustomTheme.gold_light,
            tabs: const <Widget>[
              Tab(
                child: Text(
                  'Home',
                ),
              ),
              Tab(
                child: Text(
                  'My Projects',
                ),
              ),
              Tab(
                child: Text(
                  'About Me',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
