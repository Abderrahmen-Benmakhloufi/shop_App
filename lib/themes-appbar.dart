import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themes() {
  return ThemeData(
    useMaterial3: true,

    // هنا تضع اللون الذي تحبه وسيتكفل فلاتر بالباقي
    textTheme: GoogleFonts.readexProTextTheme(),
  );
}

final bodystyle = GoogleFonts.readexPro(
  color: Color(0xFFb804E49),
  fontWeight: FontWeight.bold,
  fontSize: 15,
);
final subtitle = GoogleFonts.ibmPlexSansArabic(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 15,
);

ThemeData dark() {
  return ThemeData(
    useMaterial3: true,

    textTheme: GoogleFonts.readexProTextTheme(ThemeData.dark().textTheme),
  );
}

AppBar homeappbar(BuildContext context) {
  return AppBar(
    title: Text(
      'Shopping App',
      style: GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        color: Color(0xFFFBFAF8),
      ),
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      color: Color(0xFFFBFAF8),
    ),
    backgroundColor: Color(0xFF0A122A),
  );
}
