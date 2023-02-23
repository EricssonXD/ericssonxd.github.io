import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme.dart';
import 'glass_morphism.dart';

GlassMorphism mainPageGlassMorphism(Widget child) {
  return GlassMorphism(
    color: CustomTheme.grey,
    start: 0.6,
    end: 0.8,
    startAlignment: Alignment.topCenter,
    endAlignment: Alignment.bottomCenter,
    borderRadius: BorderRadius.circular(30),
    child: Padding(
      padding: EdgeInsets.all(20.w + 8),
      child: SingleChildScrollView(
        child: child,
      ),
    ),
  );
}
