import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:realstateapp/8)%20profile/profile.dart';
import '../themeprovider/thmechanger.dart';
class Appearance extends StatefulWidget {
  const Appearance({Key? key}) : super(key: key);


  @override
  State<Appearance> createState() => _AppearanceState();
}

class _AppearanceState extends State<Appearance> {
  bool status1 = false;
  bool status2 = true;
  bool status3 = false;
  bool status4 = false;

  @override
  Widget build(BuildContext context) {
   // final themeProvider = Provider.of<ThemeProvider>(context);
    final themeChanger=Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context,
                PageTransition(child: const Profile(),
                    duration: const Duration(seconds: 1) ,
                    type: PageTransitionType.leftToRight),
              );
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color,)),
        title:  Text("Appearance",style: TextStyle(color: Theme.of(context).backgroundColor,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width/1.1,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children:  [
            //       const Text("Dark Mode",style: TextStyle(fontSize: 20),),
            //       FlutterSwitch(
            //         height: MediaQuery.of(context).size.height/32,
            //         width: MediaQuery.of(context).size.width/8,
            //         padding: 1,
            //         value: themeProvider.isDarkMode,
            //         onToggle: (value) {
            //           setState(() {
            //             final provider = Provider.of<ThemeProvider>(context, listen: false);
            //             provider.toggleTheme(value);
            //           });
            //         },
            //       ),
            //     ],
            //   ),
            // ),
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
                  const Text("Blur background",style: TextStyle(fontSize: 20),),
                  FlutterSwitch(
                      height: MediaQuery.of(context).size.height/32,
                      width: MediaQuery.of(context).size.width/8,
                      padding: 1,
                      value: status4,
                      onToggle: (val){
                        setState(() {
                          status4=val;
                        });
                      })

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
                  const Text("Full screen",style: TextStyle(fontSize: 20),),
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
            RadioListTile(
              title: const Text("Light Theme"),
              value:ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
            ),
            RadioListTile(
              title: const Text("Dark Theme"),
              value:ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
            ),
            RadioListTile(
              title: const Text("System"),
              value:ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
            )
          ],
        ),
      ),
    );
  }
}
