import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/4)%20search/filter.dart';
import 'package:realstateapp/4)%20search/search.dart';
import '../3) Home&ActionMenu/Apartment.dart';
class Faverate extends StatefulWidget {
  const Faverate({Key? key}) : super(key: key);

  @override
  State<Faverate> createState() => _FaverateState();
}

class _FaverateState extends State<Faverate> {
  List allCategories=["All","House","Villa","Apartments"];
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      leading: null,
      title: const Text("Faverate"),
      actions: [
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Search()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height/18,
                width: MediaQuery.of(context).size.width/9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),

                  color: Theme.of(context).cardColor,
                ),
                child: const Center(child: Icon(Icons.search)),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width/50,),
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
            ),
            SizedBox(width: MediaQuery.of(context).size.width/40,),
          ],
        )
      ],
      ),

    body: Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 200),
            child:SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allCategories.length,
                  itemBuilder: (context,index){
                    return Padding(padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(

                              color: selectedIndex == index
                                  ? const Color(0xff2972fe)
                                  :  Theme.of(context).scaffoldBackgroundColor,
                              border:
                              Border.all(color: const Color(0xff2972fe), width: 2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/25),
                            child: Center(
                              child:Text(allCategories[index],
                                    style: TextStyle(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : const Color(0xff2972fe),
                                    ),
                                  ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }

              ),
            )
        ),
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        GestureDetector(
          onTap: (){
        showDialog(context: context, builder: (context){
          return SizedBox(
            width: MediaQuery.of(context).size.width/1,
            child:  SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Container(
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration:  const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              image: DecorationImage(

                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/house.jpg")
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.5,
                              bottom: MediaQuery.of(context).size.height/7,
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
                        height: MediaQuery.of(context).size.height/7,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))

                        ),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/100),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1.5,color: Colors.blueAccent)
                                  ),
                                  child: const Text("Apartments",style: TextStyle(fontSize: 14),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                                Row(
                                  children: [
                                    Text("\$2900",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 15),),
                                    const Text("/month",style: TextStyle(fontSize: 12))
                                  ],
                                ),

                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/23),
                              child: const Text("Joblee apartments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children:  [
                                    const Icon(Icons.location_on),
                                    Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                                const Icon(Icons.heart_broken_outlined)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                          ],
                        ),
                      )
                    ],
                  ),
                  //2
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      Container(
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration:  const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              image: DecorationImage(

                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/backgroound1.jpg")
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.5,
                              bottom: MediaQuery.of(context).size.height/7,
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
                        height: MediaQuery.of(context).size.height/7,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))

                        ),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/100),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1.5,color: Colors.blueAccent)
                                  ),
                                  child: const Text("Apartments",style: TextStyle(fontSize: 14),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                                Row(
                                  children: [
                                    Text("\$3009",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 15),),
                                    const Text("/month",style: TextStyle(fontSize: 12),)
                                  ],
                                ),

                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/23),
                              child: const Text("India premium house",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children:  [
                                    const Icon(Icons.location_on),
                                    Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                                const Icon(Icons.heart_broken_outlined)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                          ],
                        ),
                      )
                    ],
                  ),
                  //3
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Container(
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration:  const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              image: DecorationImage(

                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/house1.jpg")
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.5,
                              bottom: MediaQuery.of(context).size.height/7,
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
                        height: MediaQuery.of(context).size.height/7,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))

                        ),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/100),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1.5,color: Colors.blueAccent)
                                  ),
                                  child: const Text("Apartments",style: TextStyle(fontSize: 14),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                                Row(
                                  children: [
                                    Text("\$2900",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 15),),
                                    const Text("/month",style: TextStyle(fontSize: 12),)
                                  ],
                                ),

                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/23),
                              child: const Text("Joblee apartments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children:  [
                                    const Icon(Icons.location_on),
                                    Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                                const Icon(Icons.heart_broken_outlined)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                          ],
                        ),
                      )
                    ],
                  ),
                  //4
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      Container(
                          height: MediaQuery.of(context).size.height/4.5,
                          width: MediaQuery.of(context).size.width/1.1,
                          decoration:  const BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                              image: DecorationImage(

                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/house2.jpg")
                              )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.5,
                              bottom: MediaQuery.of(context).size.height/7,
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
                        height: MediaQuery.of(context).size.height/7,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                            color: Theme.of(context).dividerColor,
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))

                        ),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/100),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1.5,color: Colors.blueAccent)
                                  ),
                                  child: const Text("Apartments",style: TextStyle(fontSize: 14),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/4.5,),
                                Row(
                                  children: [
                                    Text("\$3009",style: TextStyle(color: Theme.of(context).iconTheme.color,fontSize: 15),),
                                    const Text("/month",style: TextStyle(fontSize: 12),)
                                  ],
                                ),

                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/23),
                              child: const Text("India premium house",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children:  [
                                    const Icon(Icons.location_on),
                                    Text("Surabaya, Indonesia",style: GoogleFonts.alike(fontSize: 12,),)
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                                const Icon(Icons.heart_broken_outlined)
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height/200,),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Faverate()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: MediaQuery.of(context).size.height / 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                width: 2,
                                color: const Color(0xff2972fe),
                              )),
                          child: const Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2972fe),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Apartment()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: MediaQuery.of(context).size.height / 16,
                          decoration: BoxDecoration(
                            color: const Color(0xff2972fe),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              "Yes Remove ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/10,),
                ],
              ),
            ),
          );
        });

          },
          child: const Center(
            child: Image(
              image: AssetImage("assets/signupbg.png"),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/30,),
        const Center(
          child: Text("You Don't have A faverate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color(0xff2972fe)),)
        ),


      ],
    ),
    )

    );
  }
}
