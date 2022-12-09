import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:realstateapp/1)%20Onboarding/splash1.dart';
import 'package:realstateapp/themeprovider/addtofaverateprovider.dart';
import 'package:realstateapp/themeprovider/thmechanger.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>ThemeChanger()),
          ChangeNotifierProvider(create: (_)=>AddtoFaverate()),
        ],
        child: Builder(builder: (BuildContext context){
          // khan
          final themeChanger=Provider.of<ThemeChanger>(context);
          final addtoFaverate=Provider.of<AddtoFaverate>(context);
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              scaffoldBackgroundColor:  const Color(0xffe1e1e1),
              colorScheme:  const ColorScheme.light(),
              dividerColor: Colors.white,
              cardColor: const Color(0xffeaf1ff),

              backgroundColor: Colors.black,
              iconTheme: const IconThemeData(color:  Color(0xff4081fe)),
              textTheme: TextTheme(
                  headline1: GoogleFonts.alike()
              ),
            ),
            darkTheme: ThemeData(
                backgroundColor:  Colors.white,
                scaffoldBackgroundColor:  const Color(0xff131629),
                colorScheme:  const ColorScheme.dark(),
                cardColor: const Color(0xff1d284c),
                iconTheme: const IconThemeData(color: Color(0xff4081fe)),
                dividerColor: const Color(0xff1c2039),
                textTheme: TextTheme(
                    headline1: GoogleFonts.alike()
                ),
            ),
            home: const Splash1(),
          );
        },)

    );
  }
}
