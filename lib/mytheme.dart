import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/////////singleton//////
class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: lightColor,
          onPrimary: Colors.black,
          secondary: Colors.grey,
          onSecondary: Colors.black54,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: lightColor,
          surface: Colors.white,
          onSurface: Colors.black54),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      primaryColor: lightColor,
      textTheme: TextTheme(
          bodySmall: GoogleFonts.amiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: lightColor,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: yellowColor,
          )),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: lightColor,
            size: 35,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: yellowColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: darkColor,
          surface: darkColor,
          onSurface: yellowColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      ),
      primaryColor: darkColor,
      textTheme: TextTheme(
          bodySmall: GoogleFonts.amiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: yellowColor,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: yellowColor,
          ),
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: yellowColor,
          )),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 35,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
}
