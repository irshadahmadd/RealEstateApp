import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:realstateapp/8)%20profile/profile.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Notificati extends StatefulWidget {
  const Notificati({Key? key}) : super(key: key);

  @override
  State<Notificati> createState() => _NotificatiState();
}

class _NotificatiState extends State<Notificati> {
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
                    type: PageTransitionType.topToBottom),
              );
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color,)),
        title:  Text("Notifications",style: TextStyle(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold)),
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
              const Text("Sound",style: TextStyle(fontSize: 20),),
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
              const Text("Vibrate",style: TextStyle(fontSize: 20),),
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
              const Text("New tips available",style: TextStyle(fontSize: 20),),
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
              const Text("New Services available",style: TextStyle(fontSize: 20),),
              FlutterSwitch(
                height: MediaQuery.of(context).size.height/32,
                width: MediaQuery.of(context).size.width/8,
                padding: 1,
                value: status4,
                onToggle: (val) {
                  setState(() {
                    status4 = val;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/40,),

      ],
    ),
  ),
    );
  }
}
