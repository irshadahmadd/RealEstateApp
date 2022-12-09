import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/4)%20search/filter.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height/1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/gmap.jpg"),
            )
          ),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/10,
                    left:  MediaQuery.of(context).size.width/15,
                  right:  MediaQuery.of(context).size.width/15
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height/8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1)),
                      color: Theme.of(context).dividerColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/22),
                        child: Row(
                          children:  const [
                            Text("Surabaya, Indonesia",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            Icon(Icons.expand_more)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/200,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/17,
                            width: MediaQuery.of(context).size.width/1.7,
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width/1,
                  height: MediaQuery.of(context).size.height/1.74,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      border: Border.all(width: 1,color: Theme.of(context).backgroundColor.withOpacity(0.1))
                  ),
                  child: Column(
                    children:  [
                      SizedBox(height: MediaQuery.of(context).size.height/100,),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height/200,
                          width: MediaQuery.of(context).size.width/8,
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          
                        ),
                      ),
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
                                      child: const Text("Villa",style: TextStyle(fontSize: 14),),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width/3.2,),
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

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
