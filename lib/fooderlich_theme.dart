import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.shrikhand(
      fontSize: 94.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.black,
    ),
    displayMedium: GoogleFonts.shrikhand(
      fontSize: 58.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.black,
    ),
    displaySmall: GoogleFonts.shrikhand(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    headlineMedium: GoogleFonts.shrikhand(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    headlineSmall: GoogleFonts.shrikhand(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.shrikhand(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    titleSmall: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.black,
    ),
    labelSmall: GoogleFonts.roboto(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.shrikhand(
      fontSize: 94.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.shrikhand(
      fontSize: 58.0,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.shrikhand(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.shrikhand(
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.shrikhand(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    titleLarge: GoogleFonts.shrikhand(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: Colors.white,
    ),
    titleMedium: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    titleSmall: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    labelLarge: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.white,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.roboto(
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
