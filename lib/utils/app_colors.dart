// lib/constants/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Prevent instantiation
  AppColors._();

  // Primary colors
  static const Color lightBlue = Color(0xFFC2DFE3);
  static const Color sweetPeony = Color(0xFFE06C9F);
  static const Color cerulean = Color(0xFF187795);
  static const Color lightBronze = Color(0xFFD8A47F);
  static const Color greenYellow = Color(0xFFB0FE76);

  // Gradients
  static const LinearGradient gradientTop = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const LinearGradient gradientRight = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const LinearGradient gradientBottom = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const LinearGradient gradientLeft = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const LinearGradient gradientTopRight = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const LinearGradient gradientBottomRight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );

  static const RadialGradient gradientRadial = RadialGradient(
    colors: [lightBlue, sweetPeony, cerulean, lightBronze, greenYellow],
  );
}
