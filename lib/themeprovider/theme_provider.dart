// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// class ThemeProvider extends ChangeNotifier{
//   ThemeMode themeMode=ThemeMode.dark;
//   bool get isDarkMode=> themeMode==ThemeMode.dark;
//
//   void toggleTheme(bool isOn){
//     themeMode = isOn ? ThemeMode.dark:ThemeMode.light;
//     notifyListeners();
//   }
//
// }
// class MyThemes{
//         static final lightTheme=ThemeData(
//                     scaffoldBackgroundColor:  const Color(0xffe1e1e1),
//                     colorScheme:  const ColorScheme.light(),
//                     dividerColor: Colors.white,
//                     cardColor: const Color(0xffeaf1ff),
//
//                     backgroundColor: Colors.black,
//                     iconTheme: const IconThemeData(color:  Color(0xff4081fe)),
//                     textTheme: TextTheme(
//                     headline1: GoogleFonts.alike()
//                     ),
//
//   );
//         static final darkTheme= ThemeData(
//                     backgroundColor:  Colors.white,
//                     scaffoldBackgroundColor:  const Color(0xff131629),
//                     colorScheme:  const ColorScheme.dark(),
//                     cardColor: const Color(0xff1d284c),
//                     iconTheme: const IconThemeData(color: Color(0xff4081fe)),
//                     dividerColor: const Color(0xff1c2039),
//                     textTheme: TextTheme(
//                         headline1: GoogleFonts.alike()
//                     ),
//         );
//
// }