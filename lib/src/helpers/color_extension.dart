import 'package:flutter/widgets.dart';

extension ColorExtension on Color {
  Color darken(double darken) {
    final hslColor = HSLColor.fromColor(this);
    double lightness = hslColor.lightness - darken;

    if (lightness < 0) {
      lightness = 0;
    }

    return hslColor.withLightness(lightness).toColor();
  }
}
