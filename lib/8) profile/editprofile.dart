import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:page_transition/page_transition.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
import 'dart:io';

import 'package:realstateapp/8)%20profile/notifica.dart';
import 'package:realstateapp/Models/custombutton.dart';
class EditFrofile extends StatefulWidget {
  const EditFrofile({Key? key}) : super(key: key);

  @override
  State<EditFrofile> createState() => _EditFrofileState();
}

class _EditFrofileState extends State<EditFrofile> {
  TextEditingController fullname = TextEditingController();
  TextEditingController nickname = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  String? selectedDropdownExpansiontile;
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  File? _image;
  Future getimage(ImageSource source) async{
    // ignore: invalid_use_of_visible_for_testing_member
    final image =await ImagePicker.platform.getImage(source: source);
    if(image==null) return;
    final imageTemporary=File(image.path);
    setState(() {
      _image=imageTemporary;
      Navigator.pop(context);
    });
  }
  File? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context,
                PageTransition(child: const HomeOne(),
                    duration: const Duration(seconds: 1) ,
                    type: PageTransitionType.topToBottom),
              );
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color,)),
        title:  Text("Edit Profile",style: TextStyle(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Center(
              child: PopupMenuButton(
                itemBuilder: (context){
                  return[
                    PopupMenuItem(
                      child: TextButton(
                        onPressed: ()=>getimage(ImageSource.gallery),
                        child: const Text("Gallery"),
                      ),),
                    PopupMenuItem(child: TextButton(
                      onPressed: ()=>getimage(ImageSource.camera),
                      child: const Text("Camera"),
                    ),),
                    PopupMenuItem(child: TextButton(
                      onPressed: () {
                        setState(() {
                          _image=null;
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Remove"),
                    ),),
                  ];
                },
                child: Stack(
                  alignment: Alignment.bottomRight,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(80),
                          child: _image !=null?
                          Image.file(_image!,height: 100,width: 100,fit: BoxFit.cover,):
                          Image.asset("assets/g1.jpeg",fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 85,
                        left: 80,

                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff2972fe),
                            child: Icon(Icons.edit,color: Colors.white,size: 15,)
                        )),
                  ],

                ),

              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 0.5,
              color: Theme.of(context).backgroundColor.withOpacity(0.4),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Form(
                key: _globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("Full Name*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        controller: fullname,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 2),
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Adam Smith",
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Full Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("Username*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        controller: nickname,

                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 2),
                            prefixIcon: const Icon(Icons.person),
                            hintText: "adam@smith",
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter NickName';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("DOB*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        controller: dob,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 2),
                            prefixIcon: const Icon(Icons.date_range),
                            hintText: "06/07/1998",
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter DOB';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("Email*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 2),
                            hintText: "Irshaddeveloper23@gmail.com",
                            prefixIcon: const Icon(Icons.email),
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Email';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please a valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("Number*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        controller: number,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 2),
                           prefixIcon: const Icon(Icons.add_call),
                            hintText: "+923039340151",
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter phone no ';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/20,
                      ),
                      child: const Text("Gender*",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/50,),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width/30,
                        right: MediaQuery.of(context).size.width/30,
                      ),
                      child: TextFormField(
                        controller: gender,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 2),
                                hintText: "Gender",
                            fillColor: Theme.of(context).cardColor,
                            filled: true,
                            prefixIcon: const Icon(Icons.group_add,),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                )
                            )
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please select Gender';
                          }
                          return null;
                        },

                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                  ],
                )

            ),
            CustomButten(
              tittle: "Save Changes",
              ontap: () {
                if(_globalKey.currentState!.validate()){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Notificati()));
                }
                else {
                  "Please UPDATE Profile";
                }
              },

            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
          ],
        ),
      ),
    );
  }
}
