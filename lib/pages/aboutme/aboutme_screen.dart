import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mygithubwebpage/misc/constants/constant_routes.dart';
import 'package:mygithubwebpage/misc/provider/navbar.dart';
import 'package:mygithubwebpage/misc/widgets/widget_catalog.dart';

import '../../misc/theme.dart';

class AboutMeScreen extends StatefulHookConsumerWidget {
  const AboutMeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends ConsumerState<AboutMeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => ref
        .read(navigationBarIndexProvider.notifier)
        .setByRoute(Routes.aboutMe));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle bodyMedium = const TextStyle(
      color: CustomTheme.white,
      fontSize: 20,
    );
    return mainPageGlassMorphism(
      Text(
        _aboutMeText,
        style: bodyMedium,
      ),
    );
  }
}

const String _aboutMeText =
    """Hello, and welcome to my website! My name is Ericsson Chau, and I am a student majoring in Electronic Engineering at the Hong Kong University of Science and Technology. I have always been passionate about technology and its potential to make our lives easier and more efficient.

I am always eager to learn new technologies and improve my skills, which is why I am currently seeking an internship in software engineering.

Outside of my studies, I enjoy taking on personal projects that challenge me to think creatively and find solutions to real-world problems.

I am excited to continue my journey in the world of technology and to make a positive impact through my work. Thank you for taking the time to learn more about me, and please feel free to reach out if you have any questions or opportunities to collaborate.""";
