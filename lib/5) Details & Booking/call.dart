import 'package:flutter/material.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/fristdetail.dart';
import 'package:table_calendar/table_calendar.dart';
class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  TextEditingController fullname = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  String? selectedDropdownExpansiontile1;
  String? selectedDropdownExpansiontile2;
  String? selectedDropdownExpansiontile3;
  String? selectedDropdownExpansiontile4;
  String? selectedDropdownExpansiontile5;
  DateTime today=DateTime.now();
  void _onDaySelelcted(DateTime day,DateTime focusedDay){
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeOne()));
              },
              child: Icon(Icons.arrow_back,
                  color: Theme.of(context).iconTheme.color)),
          title: Text(
            "Schedule a Call",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).backgroundColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

           Center(
             child: Column(
               children: [
                 Text("DATE= "+ today.toString().split(" ")[0],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                 SizedBox(height: MediaQuery.of(context).size.height/50,),
                 Container(
                   decoration: BoxDecoration(
                     color: Theme.of(context).dividerColor,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   width: MediaQuery.of(context).size.width/1.1,
                   height: MediaQuery.of(context).size.height/2.1,
                   child:SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: TableCalendar(
                       locale: "en_US",
                       headerStyle: const HeaderStyle(formatButtonVisible: false,titleCentered: true,formatButtonShowsNext: false),
                       availableGestures: AvailableGestures.all,
                       firstDay: DateTime.utc(1990,1,1),
                       lastDay: DateTime.utc(2022,12,30),
                       selectedDayPredicate: (day)=> isSameDay(day,today),
                       focusedDay: today,
                       onDaySelected: _onDaySelelcted,
                     ),
                   )
                 ),
               ],
             ),
           ),




              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Time",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    SizedBox(width: MediaQuery.of(context).size.width/8,),
                    Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                      ),
                      child: Center(
                        child: DropdownButton(
                          dropdownColor:
                          Theme.of(context).scaffoldBackgroundColor,
                          underline: const SizedBox(
                            width: 0,
                            height: 0,
                          ),
                          value: selectedDropdownExpansiontile4,
                          items: const [
                            DropdownMenuItem(value: "1", child: Text("1")),
                            DropdownMenuItem(value: "2", child: Text("2")),
                            DropdownMenuItem(value: "3", child: Text("3")),
                            DropdownMenuItem(value: "4", child: Text("4")),
                            DropdownMenuItem(value: "5", child: Text("5")),
                          ],
                          onChanged: (val) {
                            setState(() {
                              selectedDropdownExpansiontile4 = val as String;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                      ),
                      child: Center(
                        child: DropdownButton(
                          dropdownColor:
                          Theme.of(context).scaffoldBackgroundColor,
                          underline: const SizedBox(
                            width: 0,
                            height: 0,
                          ),
                          value: selectedDropdownExpansiontile5,
                          items: const [
                            DropdownMenuItem(value: "1", child: Text("am")),
                            DropdownMenuItem(value: "2", child: Text("pm")),

                          ],
                          onChanged: (val) {
                            setState(() {
                              selectedDropdownExpansiontile5 = val as String;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width/30,
                  ),
                  child: const Text("Enter Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
              ),
              Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width/30,
                        ),
                        child: TextFormField(
                          controller: fullname,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                              prefixIcon:  Icon(Icons.person,color: Theme.of(context).iconTheme.color,),
                              hintText: "Enter Name",
                              filled: true,
                              fillColor: Theme.of(context).dividerColor,
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      color: Color(0xff2972fe),
                                      width: 2
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Full Name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width/30,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 3),
                              hintText: "Email",
                              prefixIcon:  Icon(Icons.email,color: Theme.of(context).iconTheme.color,),
                              filled: true,
                              fillColor: Theme.of(context).dividerColor,
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      color: Color(0xff2972fe),
                                      width: 2
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Email';
                            }
                            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Please a valid Email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width/30,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 3,horizontal: 7),
                              hintText: "Number",

                              prefixIcon:  Icon(Icons.call,color: Theme.of(context).iconTheme.color,),
                              filled: true,
                              fillColor: Theme.of(context).dividerColor,
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      color: Color(0xff2972fe),
                                      width: 2
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter your Number';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Padding(

                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 30),
                          child: GestureDetector(
                            onTap: (){
                              if (_globalKey.currentState!.validate()){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstDetails()));

                              }
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              decoration: BoxDecoration(

                                color: const Color(0xff2972fe),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Schedule a call",style: TextStyle(  fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                  ],
                                ),
                              ),
                            ),
                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                    ],
                  )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
