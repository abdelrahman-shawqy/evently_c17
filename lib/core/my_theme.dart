import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(

    appBarTheme: AppBarTheme(centerTitle: true),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.poppins(
        fontSize: 14,fontWeight: FontWeight.w400 ,
      ),
      unselectedLabelStyle:GoogleFonts.poppins(
          fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffB9B9B9)
      ),
    ),
    primaryColor: Color(0xff1c1c1c),


    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0E3A99),
      onPrimary: Color(0xffF4F7FF),
      secondary: Color(0xff686868),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xffF4F7FF),
      onSurface: Colors.black,
    ),
    textTheme: TextTheme(
      titleLarge:  GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color:Color(0xff686868),
      ),
      titleMedium:  GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff686868),
      ),
      bodyLarge:  GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xff0E3A99),
      ),
      bodyMedium:  GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w600,
        color: Colors.white
      ),

      bodySmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff686868),
    ),

      titleSmall: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Color(0xff1c1c1c)
      ),
      displayLarge: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff1c1c1c)
      ),
      displayMedium:  GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xffffffff)
      ),
      displaySmall:  GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xff0E3A99)
      ),
    ),

  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
     selectedLabelStyle: GoogleFonts.poppins(
       fontSize: 14,fontWeight: FontWeight.w400 ,
     ),
      unselectedLabelStyle:GoogleFonts.poppins(
        fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xffB9B9B9)
      ),
    ),
    primaryColor: Color(0xff1c1c1c),
    textTheme: TextTheme(
      titleLarge:  GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color:Color(0xff686868),
      ),
      titleMedium:  GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff686868),
      ),
      bodyLarge:  GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color(0xff0E3A99),
      ),
      bodyMedium:  GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,),
      displayMedium:  GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xffffffff)
      ),
    ),

    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff457AED),
      onPrimary: Color(0xffF4F7FF),
      secondary: Color(0xffF4F7FF),
      onSecondary: Colors.black,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xff000F30),
      onSurface: Colors.black,
    ),
  );
}
