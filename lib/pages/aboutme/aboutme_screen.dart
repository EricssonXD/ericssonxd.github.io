import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AboutMeScreen extends StatefulHookConsumerWidget {
  const AboutMeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends ConsumerState<AboutMeScreen> {
  @override
  void initState() {
    super.initState();
    afterInit();
  }

  void afterInit() {
    // ref.read(navigationBarIndexProvider.notifier).setIndex(1);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
