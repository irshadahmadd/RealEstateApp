import 'package:flutter/material.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/home.dart';
import 'package:realstateapp/4)%20search/search.dart';
import 'package:realstateapp/6)%20contact/message.dart';
import 'package:realstateapp/7)%20faverate/faverate.dart';
import 'package:realstateapp/8)%20profile/profile.dart';
class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  State<HomeOne> createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(length: 5,
        child: Scaffold(
         body:  TabBarView(
           children: [
             Home(),
             Search(),
             Faverate(),
             Message(),
             Profile(),
           ],
         ) ,
          extendBody: true,
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width/1,
        height: MediaQuery.of(context).size.height/10,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))

      ),
         child:   TabBar(
           indicatorColor: Colors.blueAccent,

           tabs: [
               Tab(
                   icon: Container(
                       width: MediaQuery.of(context).size.width/5,
                       height: MediaQuery.of(context).size.height/10,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Theme.of(context).cardColor
                       ),
                       child: Icon(Icons.home, color: Theme.of(context).iconTheme.color)),

               ),
             Tab(
               icon: Container(
                   width: MediaQuery.of(context).size.width/5,
                   height: MediaQuery.of(context).size.height/10,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Theme.of(context).cardColor
                   ),
                   child: Icon(Icons.search_rounded, color: Theme.of(context).iconTheme.color)),

             ),
             Tab(
               icon: Container(
                   width: MediaQuery.of(context).size.width/5,
                   height: MediaQuery.of(context).size.height/10,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Theme.of(context).cardColor
                   ),
                   child: Icon(Icons.favorite_border, color: Theme.of(context).iconTheme.color)),

             ),
             Tab(
               icon: Container(
                 width: MediaQuery.of(context).size.width/5,
                   height: MediaQuery.of(context).size.height/10,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Theme.of(context).cardColor
                   ),
                   child: Icon(Icons.messenger, color: Theme.of(context).iconTheme.color)),

             ),
             Tab(
               icon:  Container(
                   width: MediaQuery.of(context).size.width/5,
                   height: MediaQuery.of(context).size.height/10,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Theme.of(context).cardColor
                   ),
                   child: Icon(Icons.person,color: Theme.of(context).iconTheme.color)),

             ),

           ],
         ),
      ),
        )
    );
  }
}
