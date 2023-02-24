import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../misc/constants/constant_routes.dart';
import '../misc/provider/navbar.dart';
import '../misc/theme.dart';

class ContactsScreen extends StatefulHookConsumerWidget {
  const ContactsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ContactsScreenState();
}

class ContactsScreenState extends ConsumerState<ContactsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => ref
        .read(navigationBarIndexProvider.notifier)
        .setByRoute(Routes.contacts));
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
            Text("Contacts"),
          ],
        ),
      ),
    );
  }
}
