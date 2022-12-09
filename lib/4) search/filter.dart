import 'package:flutter/material.dart';
import 'package:realstateapp/3)%20Home&ActionMenu/homeone.dart';
import 'package:realstateapp/5)%20Details%20&%20Booking/fristdetail.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues _currentRangeValues = const RangeValues(40, 3400);
  String? selectedDropdownExpansiontile1;
  String? selectedDropdownExpansiontile2;
  String? selectedDropdownExpansiontile3;
  String? selectedDropdownExpansiontile4;

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
            "Filter",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).backgroundColor),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 20,
              right: MediaQuery.of(context).size.width / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstDetails()));
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
                          "Buy",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                        "Sell",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2972fe),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                "Type",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6.5,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        color: Theme.of(context).dividerColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.home,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          backgroundColor: Theme.of(context).cardColor,
                          radius: 30,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "House",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 6.5,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            width: 1,
                            color: Theme.of(context)
                                .backgroundColor
                                .withOpacity(0.1)),
                        color: Theme.of(context).dividerColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.villa_sharp,
                              color: Theme.of(context).iconTheme.color),
                          backgroundColor: Theme.of(context).cardColor,
                          radius: 30,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "Villa",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 6.5,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context)
                              .backgroundColor
                              .withOpacity(0.1)),
                      color: const Color(0xff2972fe),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.apartment,
                              color: Theme.of(context).iconTheme.color),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "Apartment",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Price range",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$400-\$3400",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2972fe),
                    ),
                  ),
                ],
              ),
              RangeSlider(
                activeColor: const Color(0xff2972fe),
                inactiveColor: Theme.of(context).dividerColor,
                values: _currentRangeValues,
                max: 3400,
                divisions: 10,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              const Text("Area Sqt",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2.7,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Min"),
                          DropdownButton(
                            dropdownColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            underline: const SizedBox(
                              width: 0,
                              height: 0,
                            ),
                            value: selectedDropdownExpansiontile1,
                            items: const [
                              DropdownMenuItem(value: "1", child: Text("100")),
                              DropdownMenuItem(value: "2", child: Text("500")),
                              DropdownMenuItem(value: "3", child: Text("1000")),
                            ],
                            onChanged: (val) {
                              setState(() {
                                selectedDropdownExpansiontile1 = val as String;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 130,
                    width: MediaQuery.of(context).size.width / 14,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context)
                              .backgroundColor
                              .withOpacity(0.1)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2.7,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Max"),
                          DropdownButton(
                            dropdownColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            underline: const SizedBox(
                              width: 0,
                              height: 0,
                            ),
                            value: selectedDropdownExpansiontile2,
                            items: const [
                              DropdownMenuItem(value: "1", child: Text("2000")),
                              DropdownMenuItem(value: "2", child: Text("2500")),
                              DropdownMenuItem(value: "3", child: Text("3400")),
                            ],
                            onChanged: (val) {
                              setState(() {
                                selectedDropdownExpansiontile2 = val as String;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              const Text("Plot Area Sqt",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2.7,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Min"),
                          DropdownButton(
                            dropdownColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            underline: const SizedBox(
                              width: 0,
                              height: 0,
                            ),
                            value: selectedDropdownExpansiontile3,
                            items: const [
                              DropdownMenuItem(value: "1", child: Text("100")),
                              DropdownMenuItem(value: "2", child: Text("500")),
                              DropdownMenuItem(value: "3", child: Text("1000")),
                            ],
                            onChanged: (val) {
                              setState(() {
                                selectedDropdownExpansiontile3 = val as String;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 130,
                    width: MediaQuery.of(context).size.width / 14,
                    decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: Theme.of(context)
                              .backgroundColor
                              .withOpacity(0.1)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 17,
                    width: MediaQuery.of(context).size.width / 2.7,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Max"),
                          DropdownButton(
                            dropdownColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            underline: const SizedBox(
                              width: 0,
                              height: 0,
                            ),
                            value: selectedDropdownExpansiontile4,
                            items: const [
                              DropdownMenuItem(value: "1", child: Text("2000")),
                              DropdownMenuItem(value: "2", child: Text("2500")),
                              DropdownMenuItem(value: "3", child: Text("3400")),
                            ],
                            onChanged: (val) {
                              setState(() {
                                selectedDropdownExpansiontile4 = val as String;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Filter()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 3.7,
                      decoration: BoxDecoration(
                        color: Theme.of(context).dividerColor,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 1, color: const Color(0xff2972fe)),
                      ),
                      child: const Center(
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              color: Color(0xff2972fe),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FirstDetails()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 17,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          color: const Color(0xff2972fe),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.1)),
                        ),
                        child: const Center(
                            child: Text(
                          "Apply",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
