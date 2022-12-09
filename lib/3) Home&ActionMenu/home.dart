import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/Apartment.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/house.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/notification.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/villa.dart';
import 'package:realstateapp/4)%20search/filter.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
    TextEditingController search = TextEditingController();
    return Scaffold(
        // resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/15,
            bottom: MediaQuery.of(context).size.height/7,

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        children:  const [
                          Text("Location",style: TextStyle(fontSize: 14),),
                          Icon(Icons.expand_more)
                        ],
                      ),
                      Row(
                        children:  [
                          const Icon(Icons.location_on),
                          Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 18,fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
              SizedBox(width: MediaQuery.of(context).size.width/6,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotifiCa()));
                },
                child:  Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                      color: Theme.of(context).cardColor
                  ),
                  child: const Center(child: Icon(Icons.notifications)),
                ),
              ),



                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/17,
                    width: MediaQuery.of(context).size.width/1.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                      color: Theme.of(context).dividerColor,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/20),
                      child: TextFormField(
                        controller: search,
                        decoration:  const InputDecoration(
                          enabledBorder:InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 18)
                        ),
                      ),
                    ),
                  ),
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
                      child: const Center(child: Icon(Icons.menu)),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround ,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const House()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/6.5,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),

                          color: Theme.of(context).dividerColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child:  Icon(Icons.home,color: Theme.of(context).iconTheme.color,),
                            backgroundColor: Theme.of(context).cardColor,radius: 30,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/50,),
                          const Text("House",style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Villa()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/6.5,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                          color: Theme.of(context).dividerColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child:  Icon(Icons.villa_sharp,color: Theme.of(context).iconTheme.color),
                            backgroundColor: Theme.of(context).cardColor,radius: 30,
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/50,),
                          const Text("Villa",style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Apartment()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/6.5,
                      width: MediaQuery.of(context).size.width/4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                          color: Theme.of(context).dividerColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child:  Icon(Icons.apartment, color: Theme.of(context).iconTheme.color),
                            backgroundColor: Theme.of(context).cardColor,radius: 30,

                          ),
                          SizedBox(height: MediaQuery.of(context).size.height/50,),
                          const Text("Apartment",style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Popular",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: MediaQuery.of(context).size.width/2.5,),
                  Text("See All",style: TextStyle(color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold,fontSize: 18),)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width/25,),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/6,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration:  const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                         image: DecorationImage(

                             fit: BoxFit.cover,
                             image: AssetImage("assets/splash4bg.jpg")
                         )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                            bottom: MediaQuery.of(context).size.height/13,
                            ),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                height: MediaQuery.of(context).size.height/30,
                                width: MediaQuery.of(context).size.width/7,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(Icons.star,color: Colors.yellow,),
                                   Text("4.5",style: TextStyle(color: Colors.black),)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$1800",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Owned apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/splash3bg.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("5",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$1700",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Semiy apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/splash2bg.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.9",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$2900",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Joblee apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/backgroound1.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.7",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$3100",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Smarty apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  const Text("Nearby your Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: MediaQuery.of(context).size.width/8,),
                  Text("See All",style: TextStyle(color: Theme.of(context).iconTheme.color,fontWeight: FontWeight.bold,fontSize: 18),),

                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width/25,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/splash2bg.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.9",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$2900",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Joblee apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/backgroound1.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.7",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$3100",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Smarty apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/splash4bg.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("4.5",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$1800",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Owned apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/20,),
                    Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height/6,
                            width: MediaQuery.of(context).size.width/2.1,
                            decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                image: DecorationImage(

                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/splash3bg.jpg")
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4,
                                bottom: MediaQuery.of(context).size.height/13,
                              ),
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height/30,
                                  width: MediaQuery.of(context).size.width/7,

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text("5",style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/9,
                          width: MediaQuery.of(context).size.width/2.1,
                          decoration: BoxDecoration(
                              color: Theme.of(context).dividerColor,
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                          ),
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/150),
                                    decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(width: 1.5,color: Colors.blueAccent)
                                    ),
                                    child: const Text("Apartment",style: TextStyle(fontSize: 12),),
                                  ),
                                  Row(
                                    children: [
                                      Text("\$1700",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 12),),
                                      const Text("/month",style: TextStyle(fontSize: 12),)
                                    ],
                                  ),

                                ],
                              ),
                              const Text("Semiy apartments",style: TextStyle(fontSize: 15),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children:  [
                                      const Icon(Icons.location_on),
                                      Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken_outlined)
                                ],
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height/200,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
