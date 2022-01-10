import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Color(0xFF055AA3),
    scaffoldBackgroundColor: Color(0xFF121517),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF121517),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFFEDF4F8),
    ),
    cardColor: Color(0xFF172026),
    highlightColor: Color(0xFFEDF4F8),
    dividerColor: Color(0xFF51565A),
    primaryTextTheme: TextTheme(
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFEDF4F8),
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFFEDF4F8),
      ),
      button: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFFEDF4F8),
      ),
    ),
    textTheme: TextTheme(
      headline6: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFFEDF4F8),
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFEDF4F8),
      ),
      subtitle2: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFFEDF4F8),
      ),
      bodyText1: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFF51565A),
      ),
      bodyText2: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Color(0xFFEDF4F8),
      ),
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFFEDF4F8),
      ),
      overline: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFEDF4F8),
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFF055AA3),
    scaffoldBackgroundColor: Color(0xFFD6DFE4),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFFD6DFE4),
    ),
    iconTheme: IconThemeData(
      color: Color(0xFF172026),
    ),
    cardColor: Color(0xFFEDF4F8),
    highlightColor: Color(0xFF172026),
    dividerColor: Color(0xFF172026),
    primaryTextTheme: TextTheme(
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFEDF4F8),
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF51565A),
      ),
      button: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color(0xFFEDF4F8),
      ),
    ),
    textTheme: TextTheme(
      headline6: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF172026),
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0xFF172026),
      ),
      bodyText1: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Color(0xFF51565A),
      ),
      bodyText2: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF172026),
      ),
      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF172026),
      ),
      overline: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF51565A),
      ),
    ),
  );
}
