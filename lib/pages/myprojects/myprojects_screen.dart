import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyProjectsScreen extends StatefulHookConsumerWidget {
  const MyProjectsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MyProjectsScreenState();
}

class _MyProjectsScreenState extends ConsumerState<MyProjectsScreen> {
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
      title: GFListTile(
        title: Text(title),
      ),
    );
  }
}
