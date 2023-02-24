import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../misc/constants/constant_routes.dart';
import '../misc/provider/navbar.dart';
import '../misc/theme.dart';

class MyProjectsScreen extends StatefulHookConsumerWidget {
  const MyProjectsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyProjectsScreenState();
}

class _MyProjectsScreenState extends ConsumerState<MyProjectsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => ref
        .read(navigationBarIndexProvider.notifier)
        .setByRoute(Routes.myProjects));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _ProjectWidget(title: "Yoink"),
      ],
    );
  }
}

class _ProjectWidget extends ConsumerWidget {
  const _ProjectWidget({required this.title});
  final String title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GFCard(
      color: CustomTheme.white,
      title: GFListTile(
        title: Text(title),
      ),
    );
  }
}
