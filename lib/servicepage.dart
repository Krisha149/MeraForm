// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meraform/Homepage.dart';
import 'package:meraform/secondroute.dart';
// import 'fifthroute.dart';

class servicepage extends StatefulWidget {
  const servicepage({Key? key}) : super(key: key);
  // final String title;

  // fourthRoute(this.title);

  @override
  State<servicepage> createState() => _serviceState();
}

class _serviceState extends State<servicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    // end: Alignment(0.8, 1),

                    colors: <Color>[
                      Color(0xFFD7F09D),
                      Color(0xFFB6C6F0),
                    ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    tileMode: TileMode.mirror,
                  ),
                ),
                height: 1500,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 35.0,right: 20.0,left: 20.0,bottom: 20.0),
                  child: Column(
                    children: [
                      //1 column
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Services",style: TextStyle(fontWeight: FontWeight.bold
                          ,fontSize: 30),),
                          Container(
                              color: Colors.white70,
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/notification.png")),
                        ],
                      ),

                      SizedBox(height: 35,),
                      Container(
                        height: 186,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("35",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                                  TextButton(onPressed: (){},
                                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xffC2E96A))),
                                    child: Row(
                                    children: [
                                      Text("Monthly",style: TextStyle(color: Colors.black),),
                                      Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                                    ],
                                  ),),

                                ],
                              ),
                              SizedBox(height: 3,),
                              Align(child:Text("My Services",style: TextStyle(color: Colors.grey),),
                              alignment: Alignment.centerLeft,),

                              SizedBox(height: 10,),
                              Divider(thickness: 1,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Addnewbutton(context),
                                  Applyservicebutton(context),
                                ],
                              )


                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF2E7EB),
                          border: Border.all(color: Color(0xffF4CED2))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings),
                                  SizedBox(width: 8,),
                                  // Image.asset("assets/images/settinglogo.png",height: 1,width: 1,),
                                  Text("Check Your Service Application",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                ],
                              ),
                              // Icon(Icons.settings),
                              // // Image.asset("assets/images/settinglogo.png",height: 1,width: 1,),
                              // Text("Check Your Service Application",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              // Image.asset("assets/images/arrowlogo.png",height: 1,width: 1,),
                              Icon(Icons.arrow_back),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
              Positioned(
                top: 385,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                height: 1500,
                width: MediaQuery.of(context).size.width,
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Set Your Top Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                            Icon(Icons.star,color: Colors.yellow,),
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(child: Text("Make Your Best Services Easily Discoverable.",style: TextStyle(color: Colors.grey,fontSize: 15),),
                            alignment: Alignment.centerLeft,),
                            Text("TOP",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),)
                          ],
                        ),

                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffF7F7F7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffFFFFFF)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("1",style: TextStyle(fontWeight: FontWeight.normal),),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("Digital Education Initiatives",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),)
    ],),
                              Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF7F7F7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffFFFFFF)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("2",style: TextStyle(fontWeight: FontWeight.normal),),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Public Sector Undertakings",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),)
                                  ],),
                                Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF7F7F7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffFFFFFF)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("3",style: TextStyle(fontWeight: FontWeight.normal),),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Swachh Bharat Mission (SBM)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),)
                                  ],),
                                Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF7F7F7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffFFFFFF)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("4",style: TextStyle(fontWeight: FontWeight.normal),),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Select Service",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Colors.grey),)
                                  ],),
                                Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF7F7F7)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children:[
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color(0xffFFFFFF)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("5",style: TextStyle(fontWeight: FontWeight.normal),),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Text("Select Service",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18,color: Colors.grey),)
                                  ],),
                                Icon(Icons.keyboard_arrow_down_outlined),
                              ],
                            ),
                          ),
                        ),

                        //bottom boxes
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("05"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Education",style: TextStyle(fontWeight: FontWeight.w500),),
                                    alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("12"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Jobs",style: TextStyle(fontWeight: FontWeight.w500),),
                                      alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("20"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Schemes",style: TextStyle(fontWeight: FontWeight.w500),),
                                      alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        //second row
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("52"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Subsidies",style: TextStyle(fontWeight: FontWeight.w500),),
                                      alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("10"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Scholarships",style: TextStyle(fontWeight: FontWeight.w500),),
                                      alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width*0.28,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFFE7E3E3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height:35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                color: Color(0xffFFFFFF)
                                            ),
                                            child: Image.asset("assets/images/graduation.png")
                                        ),

                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(1),
                                              color: Color(0xFFD3C4C4)
                                          ),
                                          child: Text("25"),
                                        )

                                      ],
                                    ),

                                    Align(child: Text("Government",style: TextStyle(fontWeight: FontWeight.w500),),
                                      alignment: Alignment.centerLeft,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 25,),
                        Divider(color: Color(0xff707070),thickness: 2,),
                        SizedBox(height: 25,),

                        //review
                        Align(child: Text("Recent Customer Review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                        alignment: Alignment.centerLeft,),

                        SizedBox(height: 25,),

                        //review cards
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            review1(context),
                            SizedBox(
                              width: 10,
                            ),
                            review2(context),
                          ],),),




                      ],
                    ),
                  )
              ),)

            ],
          ),
        ),
      ),

    );}

  //add new button
  Addnewbutton(context){
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width*0.40,
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

  //apply service button
  Applyservicebutton(context){
    return Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width*0.40,
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

  //review cards
  review1(context) {
    return Container(
      height:170,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFD6E1F2),
        border: Border.all(color: Color(0xFFBDD2FB)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0,bottom: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // StarRating(
                //   rating: 4,
                //   allowHalfRating: false,
                //   onRatingChanged: (rating) => setState(() => this.rating = rating),
                // ),
                Row(
                  children: [
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFCEAB2),),
                    Icon(Icons.star,color: Color(0xffFCEAB2),),
                  ],
                ),
                SizedBox(height: 5,),
                Align(
                  child: Text(
                    "Rohit Sharma",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 10,),
                Text("Excellent service from start to finish. The vendor was professional, punctual, and went above and beyond to meet our requirements. Highly recommended")
                // Row(
                //   children: [
                //     Text("Category :",style: TextStyle(color: Colors.grey.shade600),),
                //     Text(" Education",style: TextStyle(fontWeight: FontWeight.normal),)
                //   ],
                // ),

              ],),
          ),
        ],
      ),);
  }

  //service2
  review2(context) {
    return Container(
      height:170,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFD6E1F2),
        border: Border.all(color: Color(0xFFBDD2FB)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0,bottom: 8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // StarRating(
                //   rating: 4,
                //   allowHalfRating: false,
                //   onRatingChanged: (rating) => setState(() => this.rating = rating),
                // ),
                Row(
                  children: [
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFFC107),),
                    Icon(Icons.star,color: Color(0xffFCEAB2),),
                    Icon(Icons.star,color: Color(0xffFCEAB2),),
                  ],
                ),
                SizedBox(height: 5,),
                Align(
                  child: Text(
                    "Rohit Sharma",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 10,),
                Text("Excellent service from start to finish. The vendor was professional, punctual, and went above and beyond to meet our requirements. Highly recommended")
                // Row(
                //   children: [
                //     Text("Category :",style: TextStyle(color: Colors.grey.shade600),),
                //     Text(" Education",style: TextStyle(fontWeight: FontWeight.normal),)
                //   ],
                // ),

              ],),
          ),
        ],
      ),);
  }}