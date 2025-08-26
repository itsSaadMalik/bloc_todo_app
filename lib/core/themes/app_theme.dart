import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get appLightTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 180, 180, 180),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          bottomRight: Radius.circular(15),
        ),
      ),
    ),
  );
}
