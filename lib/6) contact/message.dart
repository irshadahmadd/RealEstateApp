import 'package:flutter/material.dart';
import 'package:realstateapp/4)%20search/filter.dart';

import '../5) Details & Booking/fristdetail.dart';
class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Text("Message"),
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
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g1.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Katrine Margy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("December, 2,2022",style: TextStyle(fontSize: 12,),),
                              const Text("Great Men Margy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("3",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                         Text("9.12 am"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g2.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Krisku tort",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("January, 4,2021",style: TextStyle(fontSize: 12,),),
                              const Text("The Honest Company",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("1",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                          Text("10.8 pm"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g3.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Rohit Maya",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("August, 5,2012",style: TextStyle(fontSize: 12,),),
                              const Text("Trustworthy Dealers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("8",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                          Text("8.26 pm"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g4.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Katrine Margy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("December, 2,2022",style: TextStyle(fontSize: 12,),),
                              const Text("Great Men Margy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("4",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                          Text("2.9 am"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g5.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Krisku tort",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("January, 4,2021",style: TextStyle(fontSize: 12,),),
                              const Text("The Honest Company",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("3",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                          Text("9.12 am"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width /30),
                child:Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/g6.jpeg"),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/70,),
                              const Text("Rohit Maya",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              const Text("August, 5,2012",style: TextStyle(fontSize: 12,),),
                              const Text("Trustworthy Dealers",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: MediaQuery.of(context).size.height/70,),

                            ],
                          ),
                        ],
                      ),

                      SizedBox(width: MediaQuery.of(context).size.width/20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SizedBox(width: 5,),
                          CircleAvatar(child: Text("7",style: TextStyle(color: Colors.white),),radius: 15,backgroundColor: Color(0xff2972fe),),
                          Text("5.55 pm"),
                          SizedBox(width: 5,),

                        ],
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(

                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstDetails()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/15,
                    decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2,   color: const Color(0xff2972fe), )
                    ),
                    child:  Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.arrow_back,size: 15,),
                          Text("Back",style: TextStyle(  fontSize: 15 ,color: Color(0xff2972fe),),),
                        ],
                      ),
                    ),
                  ),
                )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
          ],
        ),
      ),
    );
  }
}
