import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/1)%20Onboarding/signin.dart';
import '../themeprovider/changethemebutten.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email=TextEditingController();
  TextEditingController passward=TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool obsecureText=true;
    bool isChecked = true;
    final GlobalKey<FormState> _formkey =GlobalKey<FormState>();

    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height/1,
          child: Column(children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 3.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/signupbg.png"),
                  ),
                ),
              ),
            ),
            Text(
              "Sign up for free",
              style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Form(
                  key: _formkey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 16),
                          child: Text("Email",
                              style: GoogleFonts.lato(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 60),
                          child: TextFormField(
                            controller: email,
                            style: TextStyle(color: Theme.of(context).backgroundColor),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: const BorderSide(color: Colors.transparent)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: Colors.blueAccent,
                                  )),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: Colors.red,
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: Colors.red,
                                  )),
                              disabledBorder: InputBorder.none,
                              filled: true,
                              fillColor: Theme.of(context).dividerColor,
                              hintText: "Email",
                              suffixIcon:  const Icon(Icons.email_outlined,),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              hintStyle: TextStyle(
                                  color: Theme.of(context).backgroundColor),
                            ),

                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Please enter email";
                              }
                              if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)){
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                            onSaved: (String? value){
                              email=value as TextEditingController;
                            },



                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 16),
                          child: Text("Passward",
                              style: GoogleFonts.lato(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 60),
                          child: TextFormField(
                            controller: passward,
                            obscureText: obsecureText,
                            style: TextStyle(color: Theme.of(context).backgroundColor),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                    borderSide: const BorderSide(color: Colors.transparent)

                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      width: 1.5,
                                      color: Colors.blueAccent,
                                    )),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      width: 1.5,
                                      color: Colors.red,
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    borderSide: const BorderSide(
                                      width: 1.5,
                                      color: Colors.red,
                                    )),
                                disabledBorder: InputBorder.none,
                                hintText: "Passward",
                                filled: true,
                                fillColor: Theme.of(context).dividerColor,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 20),
                                hintStyle: TextStyle(
                                    color: Theme.of(context).backgroundColor),
                                suffixIcon:  GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      obsecureText=!obsecureText;
                                    });
                                  },
                                  child: Icon(
                                    obsecureText? Icons.visibility
                                    :Icons.visibility_off,
                                  ),
                                )
                            ),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter a passward";
                              }
                              if (!RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\w)")
                                  .hasMatch(value)){
                                return "Please enter a strong passward";
                              }
                              else {
                                return null;
                              }

                            },
                            onSaved: (String? value){
                              passward=value as TextEditingController;
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 120,
                        ),

                      ]),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 26),
              child:  Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (val) {
                      setState(() {
                        isChecked = val!;
                      });
                    },
                    activeColor: Colors.blueAccent,
                  ),
                  Text(
                    "Remember Me",
                    style: GoogleFonts.lato(
                        color: Theme.of(context).backgroundColor,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 120,
            ),
            Center(
              child: GestureDetector(
                onTap: (){
                  if(_formkey.currentState!.validate()){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignIn()));
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
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            Center(
                child: Text(
                  "or continue with",
                  style: GoogleFonts.lato(
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 2.6,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/facebok.png",
                          width: MediaQuery.of(context).size.width/10,
                          height: MediaQuery.of(context).size.height/20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Text(
                          "Facebook",
                          style: GoogleFonts.lato(
                              color: Theme.of(context).backgroundColor),
                        )
                      ]),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 2.6,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image.asset("assets/google.png",
                        width: MediaQuery.of(context).size.width/10,
                          height: MediaQuery.of(context).size.height/20,
                        ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 30,
                      ),
                      Text(
                        "Google",
                        style: GoogleFonts.lato(
                            color: Theme.of(context).backgroundColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(height: MediaQuery.of(context).size.height/50,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?. ",style: GoogleFonts.lato(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIn()));
                      },
                      child: Text(" Sign In.",style: GoogleFonts.lato(color: Colors.blueAccent,fontWeight: FontWeight.bold),)),

                ],
              ),
            ),

          ]),
        ),
      ),
    );
  }
}
