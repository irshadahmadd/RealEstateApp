import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realstateapp/4)%20search/filter.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/call.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/gallery.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/reviews.dart';

class FirstDetails extends StatelessWidget {
  const FirstDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/house.jpg"))),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      right: MediaQuery.of(context).size.width / 30,
                      bottom: MediaQuery.of(context).size.width / 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Filter()));
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Color(0xff2972fe),
                          )),
                      const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Color(0xff2972fe),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height / 100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(width: 1.5, color: Colors.blueAccent)),
                    child: const Text(
                      "Apartments",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Reviews()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "4.8(1.7364 eviews) ",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text("Owent Apartment ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(
                    "stadium st no 129 Surabaya, Indonesia",
                    style: GoogleFonts.alike(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.bed,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        radius: 20,
                        backgroundColor: Theme.of(context).dividerColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      const Text("4 Beds")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.local_car_wash_rounded,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        radius: 20,
                        backgroundColor: Theme.of(context).dividerColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      const Text("2 washrooms")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.area_chart,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        radius: 20,
                        backgroundColor: Theme.of(context).dividerColor,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      const Text("7236 Sqft")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Center(
              child: Container(
                height: 0.6,
                width: MediaQuery.of(context).size.width / 1.1,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/men.jpg'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Andrew Bork",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Partner",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).cardColor,
                        radius: 25,
                        child: Icon(Icons.message,
                            color: Theme.of(context).iconTheme.color),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 25,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Calls()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).cardColor,
                          radius: 25,
                          child: Icon(
                            Icons.call,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text(
                "Overview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elite. Maxime mollify,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text(
                "Gallery",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Gallery()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/house1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/splash3bg.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/house.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/house2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/splash4bg.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/house1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/splash2bg.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: MediaQuery.of(context).size.height / 9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/house1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/gmap.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: const Text(
                "Features & Facilities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3.4,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                        color: const Color(0xff2972fe),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 2,

                        )),
                    child: const Center(
                      child: Text(
                        "Area & Lot",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.4,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff2972fe),
                        )),
                    child: const Center(
                      child: Text(
                        "Interior",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xff2972fe),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.4,
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff2972fe),
                        )),
                    child: const Center(
                      child: Text(
                        "Exterior",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xff2972fe),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text("Status",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Leaving Area",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Type",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Year Built",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Life Style",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Architectural style",style: TextStyle(fontSize: 16)),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("View Description",style: TextStyle(fontSize: 16)),


                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      const Text("For Sale",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("1298 Sqft",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Residential",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("2014",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Luxury",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Contemporary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                      const Text("Urban",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Price"),
                      Row(
                        children: const [
                          Text("\$1700",style: TextStyle( color: Color(0xff2972fe),fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("/month")
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Calls()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 2,

                          )),
                      child: const Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),



            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
          ],
        ),
      ),
    ));
  }
}
