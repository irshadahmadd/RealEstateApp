import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
import 'package:realstateapp/4)%20search/search.dart';
class Apartment extends StatelessWidget {
  const Apartment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading:  GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeOne()));
            },
            child: Icon(Icons.arrow_back,color: Theme.of(context).iconTheme.color)),
        title:  Text("Apartments",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Theme.of(context).backgroundColor),),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 5),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Search()));
              },
              child: Container(

                width: MediaQuery.of(context).size.width/10,
                height: MediaQuery.of(context).size.height/25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                    color: Theme.of(context).cardColor
                ),
                child:  Center(child: Icon(Icons.search_rounded ,color: Theme.of(context).iconTheme.color,)),
              ),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width/50,)

        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //1
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
            ],
          ),
        ),
      ),
    );
  }
}
