import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:meraform/secondroute.dart';
// import 'package:meraform/servicepage.dart';
// import 'fifthroute.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key,}) : super(key: key);
  // final String title;

  // fourthRoute(this.title);

  @override
  State<Homepage> createState() => _homepageState();
}

class _homepageState extends State<Homepage> {
  String dropdownvalue1 = 'Ahmedabad';

  // List of items in our dropdown menu
  var items1 = [
    'Ahmedabad',
    'Mehsana',
    'Gandhinagar',
    'Surat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // pages[currentIndex],
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _top(),
            _body(context),
          ],
        ),
      ),
    );}

  _top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    // height: 40,
                    // width: 40,
                    // color: Colors.grey,
                    child: Image.asset(
                      "assets/images/sidemenu.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(children: [
                        Icon(Icons.location_on_outlined),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Container(
                          // width: 800,
                          // height: 50,
                          // decoration: BoxBorder(
                          // border: OutlineInputBorder(
                          //   // borderRadius: new BorderRadius.circular(25.0),
                          //   borderSide: BorderSide(),
                          // ),
                          // ),
                          child: DropdownButton(
                            // Initial Value

                            value: dropdownvalue1,
                            // Down Arrow Icon

                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items1.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              // setState(() {
                              //   dropdownvalue = newValue!;
                              // }
                              // )
                            },
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              ),
              Container(
                height: 35,
                width: 35,
                color: Colors.blue.shade50,
                child: Image.asset("assets/images/notification.png"),
              ),
            ],
          )
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height*0.3,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: Colors.blue.shade50,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              //***********************************************
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "₹ 1,500",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "Total Earning",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 30,
                          width: 90,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Monthly",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 85,
                          height: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                color: Colors.red.shade200,
                                size: 20,
                              ),
                              Text(
                                "-4%",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "(₹ 60)",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 2,
                ),

                //diff cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      height: 66,
                      width: 98,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Image.asset("assets/images/totalorder.png"),
                              ],
                            ),
                            Text(
                              "Total Order",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      height: 66,
                      width: 98,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "05",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Image.asset("assets/images/neworder.png"),
                              ],
                            ),
                            Text(
                              "New Order",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      height: 66,
                      width: 98,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Image.asset("assets/images/currentorder.png"),
                              ],
                            ),
                            Text(
                              "CurrentOrder",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // **************Recent orders*****************
        SizedBox(
          // height: MediaQuery.of(context).size.height*0.1,
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Text(
                "Recent Orders",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              alignment: Alignment.centerLeft,
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),

        // **************Box*************
        SizedBox(
          height: 25,
        ),
        Container(
          height: 260,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      // controller: _tabController,
                      // controller: _tabbarcontroller,
                      indicator: BoxDecoration(
                          color: Colors.lightGreen.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,

                      tabs: [
                        Tab(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "New Order",
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 10.0,
                                  child: Text(
                                    "05",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Tab(
                            child: TextButton(
                              child: Text(
                                "Current Orders",
                                style: TextStyle(color: Colors.grey),
                              ),
                              onPressed: () {
                                Card2(context);
                              },
                            )),
                      ],
                    ),
                  ),
                ),

                //boxes
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Card1(context),
                    SizedBox(
                      width: 10,
                    ),
                    Card2(context),
                    // SizedBox(width: 10,),
                    // Card1(context),
                    // SizedBox(width: 10,),
                    // Card1(context),
                    // SizedBox(width: 10,),
                    // Card1(context),
                    // SizedBox(width: 10,),
                  ]),
                ),


              ],
            ),
          ),
        ),

        //services overview
        SizedBox(
          // height: MediaQuery.of(context).size.height*0.1,
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Text(
                "Services Overview",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
              alignment: Alignment.centerLeft,
            ),
            Text(
              "See all",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),

        //service box
        SizedBox(
          height: 25,
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Service1(context),
            SizedBox(
              width: 10,
            ),
            Service2(context),
          ],),),

        //home page
        SizedBox(height: 25,),
        Container(
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[Addnewbutton(context),

                  Applyservicebutton(context),
                ])
        ),

        SizedBox(height: 25,),

        //boxes
        Container(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height:180,
                width: MediaQuery.of(context).size.width*0.45,
                color: Color(0xffF7F7F7),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(child: Text("26",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        alignment: Alignment.centerLeft,),
                      Align(child: Text("Service Application",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 16),),
                        alignment: Alignment.centerLeft,),
                      SizedBox(height: 8,),
                      Divider(thickness: 2),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xff10B948),
                          ),
                          Text("  20",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" Approved"),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xffFB8B50),
                          ),
                          Text("  04",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" In Review"),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xffFF5454),
                          ),
                          Text("  01",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" Rejected"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height:180,
                width: MediaQuery.of(context).size.width*0.45,
                color: Color(0xffF7F7F7),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(child: Text("30",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        alignment: Alignment.centerLeft,),
                      Align(child: Text("Enrolled Services",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 16),),
                        alignment: Alignment.centerLeft,),
                      SizedBox(height: 8,),
                      Divider(thickness: 2),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xff10B948),
                          ),
                          Text("  25",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" Approved"),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xffFB8B50),
                          ),
                          Text("  02",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" In Review"),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            color: Color(0xffFF5454),
                          ),
                          Text("  01",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(" Rejected"),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

        SizedBox(height: 25,),

        //divider
        Divider(color: Colors.blue),

        SizedBox(height: 25,),

        Container(
          height: 380,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffF7F9FF),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(child: Text("Frequently Asked Question",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  alignment: Alignment.centerLeft,),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("How do I book a service on MeraForm?"),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Are the service providers on MeraForm "),
                            Text("verified?"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("How can I pay for the services booked "),
                            Text("through MeraForm?"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("What should I do if I am not satisfied "),
                            Text("with the service provided?"),
                          ],
                        ),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        SizedBox(height: 25,),

        //contact
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(child: Text("Contact Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  alignment: Alignment.centerLeft,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Image.asset("assets/images/phonelogo.png"),
                    SizedBox(width: 10,),
                    Text("+91 9568526745"),
                  ],
                ),
                Divider(thickness: 1,),
                Row(
                  children: [
                    Image.asset("assets/images/emaillogo.png"),
                    SizedBox(width: 10,),
                    Text("Support@meraform.com"),
                  ],
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        )

      ],
    );
  }

  //card 1 method
  Card1(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/graduation.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade100,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Digital Education Initiatives",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/calendar.png",
                          ),
                          Text(
                            "12 August 2024",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Rohit Sharma",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "₹ 528",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue.shade100,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/images/approvelogo.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Approve"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.pink.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("assets/images/rejectedlogo.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Reject"),
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Card2(context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/graduation.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.shade100,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Digital Education Initiatives",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/calendar.png",
                          ),
                          Text(
                            "12 August 2024",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Rohit Sharma",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "₹ 528",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // SizedBox(width: 20,),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.white,
                        ),
                        // SizedBox(width:10),
                        Text(
                          "Chat",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //services box

  Service1(context) {
    return Container(
      height: 124,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade50,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0,bottom: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  child: Text(
                    "Pradhan Mantri Jan Dhan Yojana",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Category :",style: TextStyle(color: Colors.grey.shade600),),
                    Text(" Education",style: TextStyle(fontWeight: FontWeight.normal),)
                  ],
                ),

              ],),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.91,
            color: Colors.lightBlue.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(child: Text("Submitted on 11 August 2024",style: TextStyle(color: Colors.grey.shade600),),
                    alignment: Alignment.centerLeft,)
                ],
              ),
            ),
          )
        ],
      ),);
  }

  //service2
  Service2(context) {
    return Container(
      height: 124,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pink.shade50,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0,bottom: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  child: Text(
                    "Pradhan Mantri Jan Dhan Yojana",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Category :",style: TextStyle(color: Colors.grey.shade600),),
                    Text(" Education",style: TextStyle(fontWeight: FontWeight.normal),)
                  ],
                ),

              ],),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.91,
            color: Colors.pink.shade100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Align(child: Text("Submitted on 11 August 2024",style: TextStyle(color: Colors.grey.shade600),),
                    alignment: Alignment.centerLeft,)
                ],
              ),
            ),
          )
        ],
      ),);
  }

  //add new button
  Addnewbutton(context){
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width*0.44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffF4FBE3),
            border: Border.all(color: Color(0xffDAF2A5)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Add New",style: TextStyle(fontWeight: FontWeight.bold),),
                Image.asset("assets/images/addnewlogo.png"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Applyservicebutton(context){
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width*0.44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffEEF3FF),
            border: Border.all(color: Color(0xffDCE6FF)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Apply Service",style: TextStyle(fontWeight: FontWeight.bold),),
                Image.asset("assets/images/applyservicelogo.png"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}