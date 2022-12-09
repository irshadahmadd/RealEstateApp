import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/2)%20forgotresetpassward/forgotpassward2.dart';
import 'package:realstateapp/2)%20forgotresetpassward/forgotpassward4.dart';
class ForgotPassward3 extends StatefulWidget {
  const ForgotPassward3({Key? key}) : super(key: key);

  @override
  State<ForgotPassward3> createState() => _ForgotPassward3State();
}

class _ForgotPassward3State extends State<ForgotPassward3> {
  TextEditingController newpassward= TextEditingController();
  TextEditingController confirmpassward= TextEditingController();
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  bool obsecureText=true;
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ForgotPasswar2()));
              },
              child: const Icon(Icons.arrow_back, color: Colors.blueAccent,)),
          title: Text("Forgot passward", style: TextStyle(color: Theme
              .of(context)
              .backgroundColor),),
        ),
        body: Column(children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height / 20,
          ),
          Text(
            "Create new passward.",
            style: TextStyle(
                color: Theme
                    .of(context)
                    .backgroundColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height / 20,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.1,
              child: Form(
                key: _formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery
                                .of(context)
                                .size
                                .width / 16),
                        child: Text("New Passward",
                            style: GoogleFonts.lato(
                                color: Theme
                                    .of(context)
                                    .backgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery
                                .of(context)
                                .size
                                .width / 60),
                        child: TextFormField(
                          obscureText: obsecureText,
                          style: TextStyle(color: Theme
                              .of(context)
                              .backgroundColor),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)

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
                              hintText: "New Passward",
                              filled: true,
                              fillColor: Theme
                                  .of(context)
                                  .dividerColor,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              hintStyle: TextStyle(
                                  color: Theme
                                      .of(context)
                                      .backgroundColor),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obsecureText = !obsecureText;
                                  });
                                },
                                child: Icon(
                                  obsecureText ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Enter a passward";
                            }
                            if (!RegExp(
                                r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\w)")
                                .hasMatch(value)) {
                              return "Please enter a strong passward";
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (String? value) {
                            newpassward = value as TextEditingController;
                          },
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery
                                .of(context)
                                .size
                                .width / 16),
                        child: Text("Confirm new passward",
                            style: GoogleFonts.lato(
                                color: Theme
                                    .of(context)
                                    .backgroundColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery
                                .of(context)
                                .size
                                .width / 60),
                        child: TextFormField(
                          obscureText: obsecureText,
                          style: TextStyle(color: Theme
                              .of(context)
                              .backgroundColor),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                      color: Colors.transparent)

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
                              hintText: "Confirm passward",
                              filled: true,
                              fillColor: Theme
                                  .of(context)
                                  .dividerColor,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              hintStyle: TextStyle(
                                  color: Theme
                                      .of(context)
                                      .backgroundColor),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obsecureText = !obsecureText;
                                  });
                                },
                                child: Icon(
                                  obsecureText ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Enter a passward";
                            }
                            if (!RegExp(
                                r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\w)")
                                .hasMatch(value)) {
                              return "Please enter a strong passward";
                            }
                            print(newpassward.text);

                            print(confirmpassward.text);

                            if (newpassward.text != confirmpassward.text) {
                              return "Password does not match";
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            confirmpassward = value as TextEditingController;
                          },


                        ),
                      ),
                      SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 120,
                      ),

                    ]),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 26),
            child: Row(
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
                      color: Theme
                          .of(context)
                          .backgroundColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height / 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Forgotpassward4()));
                }
              },
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 16,
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.1,
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
          SizedBox(height: MediaQuery
              .of(context)
              .size
              .height / 60,),



        ]),
    );
  }
}
