import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CenteredViewDesk(child: child),
      tablet: CenteredViewTab(child: child),
      mobile: CenteredViewMob(child: child),
    );
  }
}

class CenteredViewDesk extends StatelessWidget {
  final Widget child;
  const CenteredViewDesk({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 2000),
        child: child,
      ),
    );
  }
}

class CenteredViewMob extends StatelessWidget {
  final Widget child;
  const CenteredViewMob({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}

class CenteredViewTab extends StatelessWidget {
  final Widget child;
  const CenteredViewTab({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
