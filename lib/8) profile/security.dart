import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:realstateapp/8)%20profile/profile.dart';

import '../2) forgotresetpassward/forgotpasswar1.dart';
class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool status1 = false;
  bool status2 = true;
  bool status3 = false;
  bool status4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context,
                PageTransition(child: const Profile(),
                    duration: const Duration(seconds: 1) ,
                    type: PageTransitionType.rightToLeft),
              );
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color,)),
        title:  Text("Security",style: TextStyle(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Face ID",style: TextStyle(fontSize: 20),),
                  FlutterSwitch(
                    height: MediaQuery.of(context).size.height/32,
                    width: MediaQuery.of(context).size.width/8,
                    padding: 1,
                    value: status1,
                    onToggle: (val) {
                      setState(() {
                        status1 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 0.7,
              color: Theme.of(context).backgroundColor.withOpacity(0.4),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Remember me",style: TextStyle(fontSize: 20),),
                  FlutterSwitch(
                    height: MediaQuery.of(context).size.height/32,
                    width: MediaQuery.of(context).size.width/8,
                    padding: 1,
                    value: status2,
                    onToggle: (val) {
                      setState(() {
                        status2 = val;
                      });
                    },
                  ),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 0.7,
              color: Theme.of(context).backgroundColor.withOpacity(0.4),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Touch ID",style: TextStyle(fontSize: 20),),
                  FlutterSwitch(
                    height: MediaQuery.of(context).size.height/32,
                    width: MediaQuery.of(context).size.width/8,
                    padding: 1,
                    value: status3,
                    onToggle: (val) {
                      setState(() {
                        status3 = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/20,),
            Center(
              child: GestureDetector(
                onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgotPass1()));

                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2,color: Colors.blueAccent)
                  ),
                  child: Center(
                      child: Text(
                        "Change Passward",
                        style: GoogleFonts.lato(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 17),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
