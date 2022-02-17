import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.shrikhand(
      fontSize: 94.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.black,
    ),
    headline2: GoogleFonts.shrikhand(
      fontSize: 58.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.black,
    ),
    headline3: GoogleFonts.shrikhand(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    headline4: GoogleFonts.shrikhand(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    headline5: GoogleFonts.shrikhand(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    headline6: GoogleFonts.shrikhand(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    button: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.black,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.black,
    ),
    overline: GoogleFonts.roboto(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.shrikhand(
      fontSize: 94.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.white,
    ),
    headline2: GoogleFonts.shrikhand(
      fontSize: 58.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.white,
    ),
    headline3: GoogleFonts.shrikhand(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    headline4: GoogleFonts.shrikhand(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    headline5: GoogleFonts.shrikhand(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    headline6: GoogleFonts.shrikhand(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    subtitle1: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    button: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.white,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white,
    ),
    overline: GoogleFonts.roboto(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return Colors.black;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
