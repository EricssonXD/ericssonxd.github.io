import 'package:mygithubwebpage/include/Rows/contactpagemain.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const ContactPageDesk(),
      tablet: const ContactPageTab(),
      mobile: const ContactPageMob(),
    );
  }
}
