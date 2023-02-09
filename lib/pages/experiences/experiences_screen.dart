import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/constants/constant_routes.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';
import 'package:mygithubwebpage/misc/theme.dart';

class ExperiencesScreen extends StatefulHookConsumerWidget {
  const ExperiencesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ExperiencesScreenState();
}

class _ExperiencesScreenState extends ConsumerState<ExperiencesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => ref
        .read(navigationBarIndexProvider.notifier)
        .setByRoute(Routes.experiences));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: CustomTheme.grey,
          ),
        ),
      ),
      child: Card(
        color: CustomTheme.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("Exp"),
          ],
        ),
      ),
    );
  }
}
