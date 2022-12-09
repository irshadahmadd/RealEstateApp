import 'package:flutter/material.dart';
import 'package:realstateapp/4)%20search/filter.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/fristdetail.dart';
class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List allReviews=["All","5","4","3","2","1"];
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children:  [
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstDetails()));
                          },
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 10,),
                      const Text("Reviews",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
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
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 200),
                child:SizedBox(
                 width: double.infinity,
                  height: 60,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: allReviews.length,
                      itemBuilder: (context,index){
                        return Padding(padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width/5,
                              height: MediaQuery.of(context).size.height/10,
                              decoration: BoxDecoration(

                                  color: selectedIndex == index
                                      ? const Color(0xff2972fe)
                                      :  Theme.of(context).scaffoldBackgroundColor,
                                  border:
                                  Border.all(color: const Color(0xff2972fe), width: 2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                     Icon(Icons.star,size: 20,
                                    color:selectedIndex==index
                                        ? Colors.white
                                        :  const Color(0xff2972fe),
                                ),
                                    SizedBox(width: MediaQuery.of(context).size.width/100 ,),
                                    Text(allReviews[index],
                                      style: TextStyle(
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : const Color(0xff2972fe),
                                      ),
                                    ),
                                  ],
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("5",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("4",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("4",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("5",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("4",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
                      Container(
                        height: MediaQuery.of(context).size.height/20,
                        width: MediaQuery.of(context).size.width/9,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.star,color: Colors.white,size: 15,),
                              SizedBox(width: 3,),
                              Text("4",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
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
    )
    );
  }
}





