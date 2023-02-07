import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';

class AboutMeScreen extends StatefulHookConsumerWidget {
  const AboutMeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends ConsumerState<AboutMeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => postInit());
  }

  void postInit() {
    ref.read(navigationBarIndexProvider.notifier).state = 5;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("About Me"),
    );
  }
}
