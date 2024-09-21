import 'package:app/style/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class FontStyle extends ColorApp {
static final TextStyle h0FontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.bold
  ),
);
static final TextStyle h1FontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold
  ),
);
static final TextStyle h2FontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
);
static final TextStyle h3FontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold
  ),
);
static final TextStyle SubtitleFontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Color(0xFFB1B1B1)
  ),
);
static final TextStyle BodyFontStyle = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 12,
    
  ),
);

}