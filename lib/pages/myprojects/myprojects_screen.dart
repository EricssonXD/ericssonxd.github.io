import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';
import 'package:mygithubwebpage/misc/theme.dart';

class MyProjectsScreen extends StatefulHookConsumerWidget {
  const MyProjectsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyProjectsScreenState();
}

class _MyProjectsScreenState extends ConsumerState<MyProjectsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => postInit());
    super.initState();
  }

  void postInit() {
    ref.read(navigationBarIndexProvider.notifier).state = 1;
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
