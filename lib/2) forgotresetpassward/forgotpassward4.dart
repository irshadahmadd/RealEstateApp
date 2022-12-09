import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/home.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
class Forgotpassward4 extends StatelessWidget {
  const Forgotpassward4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width/1,
        height: MediaQuery.of(context).size.height/1,

        child:  Column(
          children:  [
            SizedBox(height: MediaQuery.of(context).size.height/5,),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 3.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/signupbg.png"),
                ),
              ),
            ),
            Text(
              "Congrats",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Text(
              "Your account is ready to use",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 17,
                ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/3.5,),
            Center(
              child: GestureDetector(
                onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeOne()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 16,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.lato(color: Colors.white),
                      )),
                ),
              ),
            ),
          ]
        ),

      ),
    );
  }
}
