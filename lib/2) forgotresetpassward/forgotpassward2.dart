import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/2)%20forgotresetpassward/forgotpasswar1.dart';
import 'package:realstateapp/2)%20forgotresetpassward/forgotpassward3.dart';
class ForgotPasswar2 extends StatefulWidget {
  const ForgotPasswar2({Key? key}) : super(key: key);

  @override
  State<ForgotPasswar2> createState() => _ForgotPasswar2State();
}

class _ForgotPasswar2State extends State<ForgotPasswar2> {
 final GlobalKey<FormState>  _farmkey=GlobalKey<FormState>();
  TextEditingController input1=TextEditingController();
  TextEditingController input2=TextEditingController();
  TextEditingController input3=TextEditingController();
  TextEditingController input4=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPass1()));
            },
            child:  const Icon(Icons.arrow_back,color: Colors.blueAccent,)),
        title:  Text("Forgot passward",style: TextStyle(color: Theme.of(context).backgroundColor),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
        width: MediaQuery.of(context).size.width/1,
        child: Center(
          child: Column(
            children:  [
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Text("Code has been sent to +9230393***1",style: GoogleFonts.lato(color: Theme.of(context).backgroundColor,fontSize: 17),),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Center(
                child: Form(
                  key: _farmkey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                        height: MediaQuery.of(context).size.height/8,
                        child:  TextField(
                          cursorColor: Theme.of(context).backgroundColor,
                          onChanged: (value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          controller: input1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Theme.of(context).backgroundColor),
                          maxLength: 1,

                          decoration: InputDecoration(
                            filled: true,
                              fillColor: Theme.of(context).dividerColor,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:  const BorderSide(width: 1.5,color: Colors.blueAccent)
                              ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.transparent)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                        height: MediaQuery.of(context).size.height/8,
                        child:  TextField(
                          onChanged: (value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          controller: input2,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Theme.of(context).backgroundColor),
                          maxLength: 1,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).dividerColor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(width: 1.5,color: Colors.blueAccent)
                            ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.transparent)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                        height: MediaQuery.of(context).size.height/8,
                        child:  TextField(
                          onChanged: (value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          controller: input3,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Theme.of(context).backgroundColor),
                          maxLength: 1,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).dividerColor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(width: 1.5,color: Colors.blueAccent)
                            ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.transparent)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/6,
                        height: MediaQuery.of(context).size.height/8,
                        child:  TextField(
                          onChanged: (value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          controller: input4,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Theme.of(context).backgroundColor),
                          maxLength: 1,

                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Theme.of(context).dividerColor,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(width: 1.5,color: Colors.blueAccent)
                            ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.transparent)
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height/2,),
              Center(
                child: GestureDetector(
                  onTap: (){
                    {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgotPassward3()));
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
      ),
    );
  }
}
