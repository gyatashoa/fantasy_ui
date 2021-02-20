

import 'package:fantasy_ui/palete/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData currentTheme =  ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black45
    )
  ),

  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Colors.black,
    indicator:UnderlineTabIndicator(
      borderSide: BorderSide(
        color: primaryColor,
        width: 2.0,

      )
       
    ),
    labelStyle: GoogleFonts.montserrat(
      color: Colors.black
    ),
    unselectedLabelStyle: GoogleFonts.montserrat(
      color: Colors.black.withOpacity(.2)
    )
  ),
  dividerColor: Colors.black38,
  primaryColor: primaryColor,
  textTheme: TextTheme(
    body1: GoogleFonts.getFont('Montserrat',color: Colors.black,fontSize: 15)
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedIconTheme: IconThemeData(
      color: Colors.white
    ),
    unselectedIconTheme: IconThemeData(
      color: Colors.black
    ),
    backgroundColor: Colors.orange
  ),
  scaffoldBackgroundColor: Colors.white
);