import 'package:flutter/material.dart';
// import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container();
    // ScreenTypeLayout(
    //   mobile: const NavbarLogoMob(),
    //   tablet: const NavbarLogoMob(),
    //   desktop: const NavbarLogoDesk(),
    // );
  }
}

class NavbarLogoMob extends StatelessWidget {
  const NavbarLogoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 80,
        width: 200,
        child: Text(
          'Ericsson Chau',
          style: TextStyle(
              color: Colors.blueAccent, fontSize: 20, fontFamily: 'Agustina'),
        )
        //Image.asset('assets/images/logo.png'),
        );
  }
}

class NavbarLogoDesk extends StatelessWidget {
  const NavbarLogoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      width: 500,
      child: Text(
        'Ericsson Chau',
        style: TextStyle(
            color: Colors.blueAccent, fontSize: 30, fontFamily: 'Agustina'),
      ),
      //Image.asset('assets/images/logo.png'),
    );
  }
}
