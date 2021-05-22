import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.raleway(
      fontSize: 98, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.raleway(
      fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.raleway(fontSize: 49, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.raleway(
      fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.raleway(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.raleway(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.raleway(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.sourceCodePro(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.sourceCodePro(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.sourceCodePro(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.sourceCodePro(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.sourceCodePro(
      fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

final ColorScheme colorScheme = ColorScheme.light(
  primary: Colors.blue,
  onPrimary: Colors.black,
  primaryVariant: Colors.orange,
  background: Colors.red[100],
  onBackground: Colors.black,
  secondary: Colors.white,
  onSecondary: Colors.white,
  secondaryVariant: Colors.deepOrange,
  error: Colors.black,
  onError: Colors.white,
  surface: Colors.white,
  onSurface: Colors.black,
  brightness: Brightness.light,
);
