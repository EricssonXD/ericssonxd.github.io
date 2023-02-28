import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return
        // Container();
        ScreenTypeLayout(
      mobile: const NavbarLogoMob(),
      tablet: const NavbarLogoMob(),
      desktop: const NavbarLogoDesk(),
    );
  }
}

class NavbarLogoDesk extends StatelessWidget {
  const NavbarLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      alignment: Alignment.bottomLeft,
      image: AssetImage('assets/icons/icon2.png'),
    );
  }
}

class NavbarLogoMob extends StatelessWidget {
  const NavbarLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      alignment: Alignment.bottomLeft,
      image: AssetImage('assets/icons/icon2.png'),
    );
  }
}
