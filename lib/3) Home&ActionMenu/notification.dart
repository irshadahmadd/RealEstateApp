import 'package:flutter/material.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
class NotifiCa extends StatefulWidget {
  const NotifiCa({Key? key}) : super(key: key);

  @override
  State<NotifiCa> createState() => _NotifiCaState();
}

class _NotifiCaState extends State<NotifiCa> {
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
        title:  Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Theme.of(context).backgroundColor),),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(top: 15,right: 5),
            child: Container(

              width: MediaQuery.of(context).size.width/10,
             height: MediaQuery.of(context).size.height/25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1)),
                  color: Theme.of(context).cardColor
              ),
              child:  Center(child: Icon(Icons.more_vert,color: Theme.of(context).iconTheme.color,)),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width/50,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/20,
          right: MediaQuery.of(context).size.width/20,
          top: MediaQuery.of(context).size.width/20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [

              const Text("Today,December 25,2022",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueAccent,
                      child: CircleAvatar(
                        child:  Icon(Icons.check,size: 20,color: Theme.of(context).iconTheme.color,),
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("Payment successful",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("You have successfully made a payment ",style:  TextStyle(),),
                        const Text("at owned Apartment",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        child:  Icon(Icons.cancel,size: 20,color: Colors.red,),
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("Order Canceled",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("You have canceled you order at semaiy ",style:  TextStyle(),),
                        const Text("Apartment",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),
              //DEC 24
              SizedBox(height: MediaQuery.of(context).size.height/30),
              const Text("Yesterday,December 24,2022",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.notifications,size: 30,color: Theme.of(context).iconTheme.color,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("New feature available",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("you can now send pictures and videos",style:  TextStyle(),),
                        const Text("in messages",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        child:  Icon(Icons.cancel,size: 20,color: Colors.red,),
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("Order Canceled",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("You have canceled you order at semaiy ",style:  TextStyle(),),
                        const Text("Apartment",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              const Text("Today,December 25,2022",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueAccent,
                      child: CircleAvatar(
                        child:  Icon(Icons.check,size: 20,color: Theme.of(context).iconTheme.color,),
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("Payment successful",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("You have successfully made a payment ",style:  TextStyle(),),
                        const Text("at owned Apartment",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/8,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1,color:Theme.of(context).backgroundColor.withOpacity(0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        child:  Icon(Icons.cancel,size: 20,color: Colors.red,),
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                        const Text("Order Canceled",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        const Text("You have canceled you order at semaiy ",style:  TextStyle(),),
                        const Text("Apartment",style:  TextStyle(),),
                        SizedBox(height: MediaQuery.of(context).size.height/100),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width/100),

                  ],
                ),
              ),

            ],

          ),
        ),
      ),

    );
  }
}
