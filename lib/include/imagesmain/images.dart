import 'package:flutter/material.dart';

Image _image1 = Image.asset('assets/images/one.png');
Image _image2 = Image.asset('assets/images/two.png');
Image _image3 = Image.asset('assets/images/three.png');
Image _image4 = Image.asset('assets/images/four.png');

class OneDesk extends StatelessWidget {
  const OneDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 700,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: _image1);
  }
}

class OneMob extends StatelessWidget {
  const OneMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300, width: 800, alignment: Alignment.center, child: _image1);
  }
}

class OneTab extends StatelessWidget {
  const OneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 600, child: _image1);
  }
}

class TwoDesk extends StatelessWidget {
  const TwoDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 700,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: _image2);
  }
}

class TwoMob extends StatelessWidget {
  const TwoMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300, width: 800, alignment: Alignment.center, child: _image2);
  }
}

class TwoTab extends StatelessWidget {
  const TwoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 600, child: _image2);
  }
}

class ThreeDesk extends StatelessWidget {
  const ThreeDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: _image3);
  }
}

class ThreeMob extends StatelessWidget {
  const ThreeMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300, width: 800, alignment: Alignment.center, child: _image3);
  }
}

class ThreeTab extends StatelessWidget {
  const ThreeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 600, child: _image3);
  }
}

class FourDesk extends StatelessWidget {
  const FourDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 600,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: _image4);
  }
}

class FourMob extends StatelessWidget {
  const FourMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300, width: 800, alignment: Alignment.center, child: _image4);
  }
}

class FourTab extends StatelessWidget {
  const FourTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 600, child: _image4);
  }
}
