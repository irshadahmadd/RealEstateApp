import 'dart:async';
import 'package:flutter/material.dart';
import 'package:realstateapp/1)%20Onboarding/splash2.dart';
class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 3),(
          (){
       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Splash2()));
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
              image: const AssetImage("assets/backgroound1.jpg"),),

        ),
      child: const Center(
        child: CircleAvatar(
          backgroundColor: Color(0xff4f8bff),radius: 60,
          child: Icon(Icons.home,color: Colors.white,size: 60,),
        ),
      ),

      );
  }
}
