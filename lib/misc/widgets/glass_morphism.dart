import 'dart:ui';
import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  final double start;
  final double end;
  final AlignmentGeometry startAlignment;
  final AlignmentGeometry endAlignment;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.start,
    required this.end,
    this.startAlignment = AlignmentDirectional.topStart,
    this.endAlignment = AlignmentDirectional.bottomEnd,
    this.color = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.border,
  }) : super(key: key);

  final Color color;
  final Border? border;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(start),
                color.withOpacity(end),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
            borderRadius: borderRadius,
            border: border ??
                Border.all(
                  width: 1.5,
                  color: color.withOpacity(0.2),
                ),
          ),
          child: child,
        ),
      ),
    );
  }
}
