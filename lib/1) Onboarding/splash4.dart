import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/1)%20Onboarding/signup.dart';
class Splash4 extends StatefulWidget {
  const Splash4({Key? key}) : super(key: key);

  @override
  State<Splash4> createState() => _Splash4State();
}

class _Splash4State extends State<Splash4> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 4),(
        (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignUp()));
        }
    )
    );
  }
  @override
  Widget build(BuildContext context) {
//    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
//         ? 'DarkTheme'
//         : 'LightTheme';
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width/1,
        height: MediaQuery.of(context).size.height/1,
        decoration:  BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
            image: const AssetImage("assets/splash4bg.jpg"),),

        ),
        child:Expanded(
          child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height/2.2,
                width: double.infinity,
                decoration:  BoxDecoration(
                   color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),topRight:  Radius.circular(25))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children:  [
                      SizedBox(height: MediaQuery.of(context).size.height/90,),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: MediaQuery.of(context).size.height/100,

                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: DefaultTextStyle(
                            style: TextStyle(color: Color(0xff4f8bff),fontSize: 23,fontWeight: FontWeight.bold),
                            child: Text('Find your beloved family Dream house with us',textAlign: TextAlign.center,),

                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: DefaultTextStyle(

                            style:  GoogleFonts.alike(color: Theme.of(context).backgroundColor,fontSize: 15,),
                            child: Text('The Biggest Real Estate app of the century you can use it for free for your property and RealEstate business',textAlign: TextAlign.center, style: GoogleFonts.lato(fontStyle: FontStyle.normal),),

                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 5,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width/70,),
                            const CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 5,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width/70,),
                            const CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 5,
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: DefaultTextStyle(
                            style: TextStyle(color: Color(0xff4f8bff),fontSize: 18,fontWeight: FontWeight.w600),
                            child: Text('Skip',textAlign: TextAlign.center,),

                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: MediaQuery.of(context).size.height/17,
                        decoration: BoxDecoration(
                          color: const Color(0xff4f8bff),
                          borderRadius: BorderRadius.circular(20)
                          ,                    ),
                        child:  const Center(
                          child: DefaultTextStyle(
                              style: TextStyle(color: Colors.white,fontSize: 16),
                              child: Text("Next")),
                        ),
                      ),


                    ],
                  ),
                ),
              )

          ),
        ),
      ),
    );
  }
}
