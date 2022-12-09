import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/1)%20Onboarding/splash3.dart';
class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),(
        (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Splash3()));
        }
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1,
      height: MediaQuery.of(context).size.height/1,
      decoration:  BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.4), BlendMode.dstATop),
          image: const AssetImage("assets/splash2bg.jpg"),),

      ),
      child:Expanded(
        child: Align(
          alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height/2.2,
              width: double.infinity,
              decoration:  BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
              ),
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
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40),
                 child: DefaultTextStyle(
                   style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 23,fontWeight: FontWeight.bold),
                   child: const Text('The Biggest Real Estate app of the century',textAlign: TextAlign.center,),

                 )
               ),
                  SizedBox(height: MediaQuery.of(context).size.height/70,),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: DefaultTextStyle(

                        style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 15,),
                        child: Text('The Biggest Real Estate app of the century you can use it for free for your property and RealEstate business',textAlign: TextAlign.center, style: GoogleFonts.lato(fontStyle: FontStyle.normal),),

                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/50,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 5,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/70,),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 5,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/70,),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 5,
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: DefaultTextStyle(
                        style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 18,fontWeight: FontWeight.w600),
                        child: const Text('Skip',textAlign: TextAlign.center,),

                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    height: MediaQuery.of(context).size.height/17,
                    decoration: BoxDecoration(
                      color: const Color(0xff4f8bff),
                      borderRadius: BorderRadius.circular(20)
,                    ),
                    child:   Center(
                      child: DefaultTextStyle(
                          style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 16),
                          child: const Text("Next")),
                    ),
                  )
                ],
              ),
            )

        ),
      ),
    );
  }
}
