import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/2)%20forgotresetpassward/forgotpassward2.dart';
import '../1) Onboarding/signin.dart';
class ForgotPass1 extends StatefulWidget {
  const ForgotPass1({Key? key}) : super(key: key);

  @override
  State<ForgotPass1> createState() => _ForgotPass1State();
}

class _ForgotPass1State extends State<ForgotPass1> {
  bool sms=false;
  bool email=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
            },
            child:  const Icon(Icons.arrow_back,color: Colors.blueAccent,)),
        title:  Text("Forgot passward",style: TextStyle(color: Theme.of(context).backgroundColor),),
      ),
       body: Container(
         color: Theme.of(context).scaffoldBackgroundColor,
         margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
         width: MediaQuery.of(context).size.width/1,
         child: Column(
           children:  [
             SizedBox(height: MediaQuery.of(context).size.height/20,),
             Text("Select which contact details should we use to reset your passward",
                 style: GoogleFonts.lato(color: Theme.of(context).backgroundColor,fontSize: 15,fontWeight: FontWeight.bold)),
             SizedBox(height: MediaQuery.of(context).size.height/20,),
             Container(
               width: MediaQuery.of(context).size.width/1.1,
               height:MediaQuery.of(context).size.height/6.5,
               decoration: BoxDecoration(
                 color: Theme.of(context).dividerColor,
                 border: Border.all(width: 3, color: (sms==false)? Colors.transparent:Colors.blueAccent),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: ListTileTheme(
                 child: CheckboxListTile(
                   value: sms,
                   onChanged: (bool? val){
                     setState(() {
                       sms=val!;
                     });
                   },
                   activeColor: Colors.transparent,
                   checkColor: Colors.transparent,
                   tileColor: Colors.transparent,
                   selectedTileColor: Colors.transparent,
                   side: const BorderSide(
                     width: 2,color: Colors.transparent
                   ),
                   title: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(child: const Icon(Icons.sms,),
                           radius: 40,backgroundColor: Theme.of(context).cardColor),
                       const SizedBox(width: 30,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:  [
                           Text("Via SMS",style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 20),),
                           const SizedBox(height: 10,),
                           Text("+111****99",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Theme.of(context).backgroundColor),),
                         ],
                       )
                     ],
                   ),
                 ),
               ),

             ),
             SizedBox(height: MediaQuery.of(context).size.height/20,),
             Container(
               width: MediaQuery.of(context).size.width/1.1,
               height:MediaQuery.of(context).size.height/6.5,
               decoration: BoxDecoration(
                 color: Theme.of(context).dividerColor,
                 border: Border.all(width: 3, color: (email==false)? Colors.transparent:Colors.blueAccent),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: ListTileTheme(
                 child: CheckboxListTile(
                   value: email,
                   onChanged: (bool? val){
                     setState(() {
                       email=val!;
                     });
                   },
                   activeColor: Colors.transparent,
                   checkColor: Colors.transparent,
                   tileColor: Colors.transparent,
                   selectedTileColor: Colors.transparent,
                   side: const BorderSide(
                       width: 2,color: Colors.transparent
                   ),
                   title: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(child: const Icon(Icons.email,),
                           radius: 40,backgroundColor: Theme.of(context).cardColor),
                       const SizedBox(width: 30,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:  [
                           Text("Via Email",style: TextStyle(color: Theme.of(context).backgroundColor,fontSize: 20),),
                           const SizedBox(height: 10,),
                           Text("irsh*****@.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Theme.of(context).backgroundColor),),
                         ],
                       )
                     ],
                   ),
                 ),
               ),

             ),
             SizedBox(height: MediaQuery.of(context).size.height/3.6,),
             Center(
               child: GestureDetector(
                 onTap: (){
                   if(sms !=email)
                   {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgotPasswar2()));
                   }
                   else {
                     return;
                   }

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
                         "Sign Up",
                         style: GoogleFonts.lato(color: Colors.white),
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
