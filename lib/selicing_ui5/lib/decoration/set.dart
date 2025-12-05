import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassName {
  // settingan colors
  static const Color colors1 = Color(0XffCF0B0c);
  static const Color colors2 = Color(0Xff118E7E);
  static const Color colors3 = Color(0XffFFD6C4);
  static const Color colors4 = Color(0XffEAE6FF);
  static const Color colors5 = Color(0XffFFFFFF);
  // settingan fonts
      //  poppins
  static final TextStyle style1 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600 ,
    color: ClassName.colors5
  );
  static final TextStyle style2 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600 ,
    color: Colors.white
  );
  static final TextStyle style3 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600 ,
    color: Colors.white
  );
  
      // opensans
  static final TextStyle style5 = GoogleFonts.openSans(
    fontSize: 12,
    color: Colors.white
  );
  static final TextStyle style6 = GoogleFonts.openSans(
    fontSize: 8,
    color: Colors.white
  );
  
  // settingan icons
  static final Icon icon1 =Icon(Icons.chat,color:Colors.white,size: 14,);
}