import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zergiocunha_net/layers/presentation/app_colors.dart';

class AppTextStyles {
  bool? underline;
  bool? italic;
  Color? color;

  AppTextStyles._(
    this.underline,
    this.italic,
    this.color,
  );

  static final TextStyle headline1 = GoogleFonts.quicksand(
    fontSize: 32,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headline2 = GoogleFonts.quicksand(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle bodyText1 = GoogleFonts.quicksand(
    fontSize: 70,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyText1blue = GoogleFonts.quicksand(
    fontSize: 70,
    color: AppColors.blue,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyText2 = GoogleFonts.quicksand(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyText2Blue = GoogleFonts.quicksand(
    fontSize: 20,
    color: AppColors.pastelBlue,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle caption = GoogleFonts.quicksand(
    fontSize: 16,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle button = GoogleFonts.quicksand(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
