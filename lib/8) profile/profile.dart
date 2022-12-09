import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/1)%20Onboarding/splash1.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
import 'dart:io';
import 'package:realstateapp/4)%20search/filter.dart';
import 'package:realstateapp/8)%20profile/apperrnce.dart';
import 'package:realstateapp/8)%20profile/editprofile.dart';
import 'package:realstateapp/8)%20profile/invitefriends.dart';
import 'package:realstateapp/8)%20profile/notifica.dart';
import 'package:realstateapp/8)%20profile/security.dart';
import 'package:page_transition/page_transition.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeOne()));
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color,)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Setting",style: TextStyle(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Filter()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height/18,
                width: MediaQuery.of(context).size.width/9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),

                  color: Theme.of(context).cardColor,
                ),
                child: const Center(child: Icon(Icons.more_vert)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              Image.asset("assets/g4.jpeg",fit: BoxFit.cover,),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Adam Smith",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: MediaQuery.of(context).size.height/150,),
                    const Text("Adam.Smith@yourdomain.com",style: TextStyle(fontSize: 15,),),
                    SizedBox(height: MediaQuery.of(context).size.height/150,),
                    const Text("Indonesia",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width/100,),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              height: 0.5,
              color: Theme.of(context).backgroundColor.withOpacity(0.4),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      PageTransition(child: const EditFrofile(),
                          duration: const Duration(seconds: 1) ,
                          type: PageTransitionType.bottomToTop),
                  );
                 //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditFrofile()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.person,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Edit Profile",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    PageTransition(child: const Notificati(),
                        duration: const Duration(seconds: 1) ,
                        type: PageTransitionType.bottomToTop),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.notifications,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Notification",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    PageTransition(child: const Security(),
                        duration: const Duration(seconds: 1) ,
                        type: PageTransitionType.leftToRight),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.lock,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Security",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    PageTransition(child: const Appearance(),
                        duration: const Duration(seconds: 1) ,
                        type: PageTransitionType.rightToLeft),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.remove_red_eye,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Appearance",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.help,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Help",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                    PageTransition(child: const InviteFriends(),
                        duration: const Duration(seconds: 1) ,
                        type: PageTransitionType.topToBottom),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.group,size: 30,color:  Color(0xff2972fe),)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Invite Friends",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


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
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Splash1()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:  [
                        CircleAvatar(
                            backgroundColor: Theme.of(context).cardColor,
                            radius: 25,
                            child: const Icon(Icons.logout_outlined,size: 30,color:  Colors.red,)),
                        SizedBox(width: MediaQuery.of(context).size.width/25,),
                        const Text("Log Out",style: TextStyle(fontSize: 17),),
                      ],
                    ),


                    const Icon(Icons.keyboard_arrow_right,size: 30,),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/8,),

          ],
        ),
      ),
    );
  }
}
