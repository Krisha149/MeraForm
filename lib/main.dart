import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

//import second page
import 'secondroute.dart';

// import 'package:carousel_slider/carousel_slider.dart';

// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // fontFamily: 'Raleway',
        // primarySwatch: Colors.blue,
        // brightness: Brightness.light,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController mobileController = TextEditingController();

  var isVisible = false;
  var isProcessBtn = true;

  void _proceedForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        if (isVisible == true) {
          isVisible = false;
          isProcessBtn = true;
        } else {
          isVisible = true;
          isProcessBtn = false;
        }
      });
    }
  }

  Widget otpWidget() {
    return OtpTextField(
      numberOfFields: 6,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      borderColor: Color(0xFF512DA8),
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.42,
            width: double.infinity,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome to MeraForm",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "We're thrilled to see you again!",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 270,
            child: Container(
              // height: 800,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            "Enter your registered mobile number to receive a One-Time Password (OTP) for secure login.",
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Mobile Number",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print(
                                            "edit*********************************");
                                      },
                                      child: Visibility(
                                        visible: isVisible,
                                        child: const Text(
                                          "Edit",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  controller: mobileController,
                                  keyboardType: TextInputType.number,
                                  maxLength: 10,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    prefixIcon: Image.asset(
                                      'assets/images/indian_flag.png',
                                      width: 1,
                                      height: 1,
                                    ),
                                    hintText: "999-999-552-5541",
                                    fillColor: Colors.white,
                                    border: const OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        (value != null && value.isEmpty)) {
                                      return 'please enter the phone number';
                                    }
                                    if (value.length != 10) {
                                      return 'please enter a 10 digit mobile number';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                          // Visibility(
                          //   visible: isVisible,
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(top: 20.0),
                          //     child: Column(
                          //       children: [
                          //         const Align(
                          //           child: Text(
                          //             "Enter the 6-digit OTP",
                          //             style: TextStyle(fontWeight: FontWeight.bold),
                          //           ),
                          //           alignment: Alignment.centerLeft,
                          //         ),
                          //         const SizedBox(
                          //           height: 10,
                          //         ),
                          //         Row(
                          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             const SizedBox(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //                   textInputAction: TextInputAction.next,
                          //
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //                     border: OutlineInputBorder(
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //             Container(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //
                          //                   // style: TextStyle( width: 2, color: Colors.black),
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //
                          //                     // contentPadding: EdgeInsets.all(5),
                          //                     border: OutlineInputBorder(
                          //                       // borderRadius: new BorderRadius.circular(25.0),
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //             // SizedBox(width: 15,),
                          //
                          //             Container(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //
                          //                   // style: TextStyle( width: 2, color: Colors.black),
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //
                          //                     // contentPadding: EdgeInsets.all(5),
                          //                     border: OutlineInputBorder(
                          //                       // borderRadius: new BorderRadius.circular(25.0),
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //             // SizedBox(width: 15,),
                          //
                          //             Container(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //
                          //                   // style: TextStyle( width: 2, color: Colors.black),
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //
                          //                     // contentPadding: EdgeInsets.all(5),
                          //                     border: OutlineInputBorder(
                          //                       // borderRadius: new BorderRadius.circular(25.0),
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //             // SizedBox(width: 15,),
                          //
                          //             Container(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //
                          //                   // style: TextStyle( width: 2, color: Colors.black),
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //
                          //                     // contentPadding: EdgeInsets.all(5),
                          //                     border: OutlineInputBorder(
                          //                       // borderRadius: new BorderRadius.circular(25.0),
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //             // SizedBox(width: 15,),
                          //
                          //             Container(
                          //               width: 50,
                          //               child: TextField(
                          //                   keyboardType: TextInputType.number,
                          //                   maxLength: 1,
                          //                   // style: TextStyle( width: 2, color: Colors.black),
                          //                   decoration: InputDecoration(
                          //                     counterText: "",
                          //                     // contentPadding: EdgeInsets.all(5),
                          //                     border: OutlineInputBorder(
                          //                       // borderRadius: new BorderRadius.circular(25.0),
                          //                       borderSide: BorderSide(),
                          //                     ),
                          //                   )),
                          //             ),
                          //           ],
                          //         ),
                          //         SizedBox(
                          //           height: 10,
                          //         ),
                          //         Row(
                          //           children: [
                          //             Text(
                          //               "Didn't receive an OTP ? Resend OTP",
                          //               style: TextStyle(color: Colors.grey),
                          //             ),
                          //             SizedBox(width: 90),
                          //             Text(
                          //               "0:89",
                          //               style: TextStyle(fontWeight: FontWeight.bold),
                          //             )
                          //           ],
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //otp upper text
                              if (isVisible) otpWidget(),
                              //otp bottom text
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                          onPressed: () {
                            if (isVisible) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondRoute()),
                              );
                            } else {
                              _proceedForm();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                          ),
                          child: Text(
                            isVisible ? "Verify & Continue" : "Proceed Ahead",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    // Visibility(
                    //   visible: isVisible,
                    //   child: SizedBox(
                    //     width: 600,
                    //     child: ElevatedButton(
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => SecondRoute()),
                    //           );
                    //         },
                    //
                    //         // _formKey.currentState!.validate();
                    //         //
                    //         // Navigator.push(context,MaterialPageRoute(builder: (context) =>  SecondRoute())
                    //         // );
                    //
                    //         // style: ElevatedButton.styleFrom(
                    //         //
                    //         //   backgroundColor: Colors.purple,
                    //         // ),
                    //
                    //         style: ElevatedButton.styleFrom(
                    //           primary: Colors.lightGreen,
                    //         ),
                    //         child: Text(
                    //           "Verify & Continue",
                    //           style: TextStyle(color: Colors.black),
                    //         )),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

//second screen

// class SecondRoute extends StatelessWidget {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   TextEditingController firstnameController = TextEditingController();
//   TextEditingController lastnameController = TextEditingController();
//
//   void _nextProceedForm() {
//     // if(_formKey.currentState!.validate()){
//     _formKey.currentState!.validate();
//     // final isValid = _formKey.currentState!.validate();
//     // if (!isValid) {
//     //   return;
//     // }
//     // setState((){});
//     // setState(() {
//     // });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
//           child: Container(
//               child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "Welcome!",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
//                     )),
//                 Text(
//                     "Its seems like you are new to MeraForm, Please fill out the details below to create your account and get started on your journey with us."),
//                 SizedBox(
//                   height: 55,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       "First Name",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 105,
//                     ),
//                     Text(
//                       "Last Name",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 15,
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     // SizedBox(width: 6,),
//                     Expanded(
//                         child: TextFormField(
//                       controller: firstnameController,
//                       decoration: const InputDecoration(
//                         fillColor: Colors.black,
//                         border: OutlineInputBorder(),
//                         labelText: "First Name",
//                       ),
//                       keyboardType: TextInputType.text,
//                     )),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Expanded(
//                         child: TextFormField(
//                       controller: lastnameController,
//                       decoration: const InputDecoration(
//                         fillColor: Colors.black,
//                         border: OutlineInputBorder(),
//                         labelText: "Last Name",
//                       ),
//                       keyboardType: TextInputType.text,
//                     )),
//                     // SizedBox(width: 6,),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Column(children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Mobile Number*",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
// // controller: mobilenocontroller,
//                     keyboardType: TextInputType.number,
//                     maxLength: 10,
//                     decoration: InputDecoration(
//                       counterText: "",
//
//                       // labelText: "999-999-552-5541",
//                       //   prefixIcon: Padding(
//                       //     padding: const EdgeInsets.all(1.0),
//                       prefixIcon: Image.asset(
//                         'assets/images/indian_flag.png',
//                         width: 1,
//                         height: 1,
//                         // fit: BoxFit.fill,
//                       ),
//
//                       labelText: "Enter Mobile No",
//
//                       fillColor: Colors.white,
//
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       //fillColor: Colors.green
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return 'please enter the phone number';
//                       }
//                       if (value.length != 10) {
//                         return 'please enter a 10 digit mobile number';
//                       }
//                       return null;
//                     },
//                     // onFieldSubmitted: (value) {},
//                   ),
//                 ]),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Email Address",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
// // controller: mobilenocontroller,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     // labelText: "999-999-552-5541",
//                     //   prefixIcon: Padding(
//                     //     padding: const EdgeInsets.all(1.0),
//
//                     labelText: "Enter Email Address",
//
//                     fillColor: Colors.white,
//
//                     border: OutlineInputBorder(
//                       // borderRadius: new BorderRadius.circular(25.0),
//                       borderSide: BorderSide(),
//                     ),
//                     //fillColor: Colors.green
//                   ),
//                   // validator: (monum)=>(monum!.length < 10 || monum!.length == null)?,
//                   // validator: (value) {
//                   //   if (value!.isEmpty) {
//                   //     return 'please enter the phone number';
//                   //   }
//                   //   if (value.length != 10) {
//                   //     return 'please enter a 10 digit mobile number';
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Aadhar Card Number*",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
// // controller: mobilenocontroller,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     // labelText: "999-999-552-5541",
//                     //   prefixIcon: Padding(
//                     //     padding: const EdgeInsets.all(1.0),
//
//                     labelText: "Ex. 1234-5678-9014",
//
//                     fillColor: Colors.white,
//
//                     border: OutlineInputBorder(
//                       // borderRadius: new BorderRadius.circular(25.0),
//                       borderSide: BorderSide(),
//                     ),
//                     //fillColor: Colors.green
//                   ),
//
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'please enter the Aadhar number';
//                     }
//                     if (value.length != 12) {
//                       return 'please enter a 12 digit Aadhar number';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "GST Number",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
// // controller: mobilenocontroller,
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     // labelText: "999-999-552-5541",
//                     //   prefixIcon: Padding(
//                     //     padding: const EdgeInsets.all(1.0),
//
//                     labelText: "Ex. 22AAAA0000A1Z5",
//
//                     fillColor: Colors.white,
//
//                     border: OutlineInputBorder(
//                       // borderRadius: new BorderRadius.circular(25.0),
//                       borderSide: BorderSide(),
//                     ),
//                     //fillColor: Colors.green
//                   ),
//                 ),
//                 SizedBox(
//                   height: 80,
//                 ),
//                 SizedBox(
//                   width: 600,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           //multiple data
//                           MaterialPageRoute(
//                               builder: (context) =>
//                                   thirdRoute(title: firstnameController.text)),
//                         );
//                       },
//
//                       // _formKey.currentState!.validate();
//
//                       // Navigator.push(context,MaterialPageRoute(builder: (context) =>  SecondRoute())
//                       // );
//
//                       // style: ElevatedButton.styleFrom(
//                       //
//                       //   backgroundColor: Colors.purple,
//                       // ),
//
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.lightGreen,
//                       ),
//                       child: Text(
//                         "Proceed Ahead",
//                         style: TextStyle(color: Colors.black),
//                       )),
//                 ),
//
//                 // Navigator.push(context,new MaterialPageRoute(builder: (context)=>new fourthRoute(name: new SecondRoute(firstnameController,lastnameController) )));
//               ],
//             ),
//           )),
//         ),
//       ),
//     );
//   }
// }

//third class

// class thirdRoute extends StatelessWidget {
//   // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   thirdRoute({Key? key, required this.title}) : super(key: key);
//   final String title;
//
// // final String data;
//   String dropdownvalue = 'Select State';
//
//   // List of items in our dropdown menu
//   var items = [
//     'Select State',
//     'Gujarat',
//     'Tamilnadu',
//     'Rajasthan',
//   ];
//
//   String dropdownvalue1 = 'Select City';
//
//   // List of items in our dropdown menu
//   var items1 = [
//     'Select City',
//     'Mehsana',
//     'Gandhinagar',
//     'Surat',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 25.0, top: 100.0),
//         child: SingleChildScrollView(
//           child: Container(
//               child: Column(
//             children: [
//               Align(
//                 child: Text(
//                   "Add Address",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 60.0),
//                 child: Text(
//                   "Please enter the details of your current address.",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Container(
//                   color: Colors.blue.shade50,
//                   width: 450,
//                   height: 50,
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Text(
//                       "Work Address *",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Align(
//                 child: Text(
//                   "Address Line 1*",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Address"),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "Address Line 2",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Address"),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "State",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 800,
//                       height: 50,
//                       // decoration: BoxBorder(
//                       // border: OutlineInputBorder(
//                       //   // borderRadius: new BorderRadius.circular(25.0),
//                       //   borderSide: BorderSide(),
//                       // ),
//                       // ),
//                       child: DropdownButton(
//                         // Initial Value
//
//                         value: dropdownvalue,
//                         // Down Arrow Icon
//
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           // setState(() {
//                           //   dropdownvalue = newValue!;
//                           // }
//                           // )
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "City",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 800,
//                       height: 50,
//                       // decoration: BoxBorder(
//                       // border: OutlineInputBorder(
//                       //   // borderRadius: new BorderRadius.circular(25.0),
//                       //   borderSide: BorderSide(),
//                       // ),
//                       // ),
//                       child: DropdownButton(
//                         // Initial Value
//
//                         value: dropdownvalue1,
//                         // Down Arrow Icon
//
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items1.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           // setState(() {
//                           //   dropdownvalue = newValue!;
//                           // }
//                           // )
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Align(
//                 child: Text(
//                   "Pin code",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Pin code"),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Container(
//                   color: Colors.blue.shade50,
//                   width: 450,
//                   height: 50,
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Text(
//                       "Home Address",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Align(
//                 child: Text(
//                   "Address Line 1*",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Address"),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "Address Line 2",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Address"),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "State",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 800,
//                       height: 50,
//                       // decoration: BoxBorder(
//                       // border: OutlineInputBorder(
//                       //   // borderRadius: new BorderRadius.circular(25.0),
//                       //   borderSide: BorderSide(),
//                       // ),
//                       // ),
//                       child: DropdownButton(
//                         // Initial Value
//
//                         value: dropdownvalue,
//                         // Down Arrow Icon
//
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           // setState(() {
//                           //   dropdownvalue = newValue!;
//                           // }
//                           // )
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 child: Text(
//                   "City",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 800,
//                       height: 50,
//                       // decoration: BoxBorder(
//                       // border: OutlineInputBorder(
//                       //   // borderRadius: new BorderRadius.circular(25.0),
//                       //   borderSide: BorderSide(),
//                       // ),
//                       // ),
//                       child: DropdownButton(
//                         // Initial Value
//
//                         value: dropdownvalue1,
//                         // Down Arrow Icon
//
//                         icon: const Icon(Icons.keyboard_arrow_down),
//
//                         // Array list of items
//                         items: items1.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           // setState(() {
//                           //   dropdownvalue = newValue!;
//                           // }
//                           // )
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Align(
//                 child: Text(
//                   "Pin code",
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 25.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         // borderRadius: new BorderRadius.circular(25.0),
//                         borderSide: BorderSide(),
//                       ),
//                       hintText: "Enter Pin code"),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Align(
//                 child: Row(
//                   children: [
//                     Checkbox(
//                       // tristate: true, // Example with tristate
//                       value: true,
//                       activeColor: Colors.black,
//                       onChanged: (bool? newValue) {
//                         // setState(() {
//                         //   value = newValue;
//                         // });
//                       },
//                     ),
//                     Text(
//                       "By clicking, I agree to the Privacy Policy & Terms & Condition.",
//                       style: TextStyle(fontSize: 11),
//                     ),
//                   ],
//                 ),
//                 alignment: Alignment.centerLeft,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 18.0),
//                 child: SizedBox(
//                   width: 600,
//                   child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => fourthRoute(title: title),
//                             ));
//                       },
//
//                       // _formKey.currentState!.validate();
//
//                       // Navigator.push(context,MaterialPageRoute(builder: (context) =>  SecondRoute())
//                       // );
//
//                       // style: ElevatedButton.styleFrom(
//                       //
//                       //   backgroundColor: Colors.purple,
//                       // ),
//
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.lightGreen,
//                       ),
//                       child: Text(
//                         "Save Details",
//                         style: TextStyle(color: Colors.black),
//                       )),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             ],
//           )),
//         ),
//       ),
//     );
//   }
// }

//fourth class

// class fourthRoute extends StatelessWidget {
//    fourthRoute({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   String dropdownvalue1 = 'Ahmedabad';
//
//   // List of items in our dropdown menu
//   var items1 = [
//     'Ahmedabad',
//     'Mehsana',
//     'Gandhinagar',
//     'Surat',
//   ];
//
//   // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:Column(
//         children: [
//           Container(
//             // color: Colors.pink,
//             height: 110,
//             width: 600,
//             child: Padding(
//               padding: const EdgeInsets.only(left:10.0,right: 10.0,top: 30.0),
//                   child:Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                   Container(
//                     height: 40,
//                     width: 40,
//                     // color: Colors.grey,
//                     child: Image.asset("assets/images/sidemenu.png"),
//                   ),
//                   Column(
//                     children: [
//                       Text('Welcome, '+'${title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
//                       Row(
//                         children: [
//                           Icon(Icons.location_on_outlined),
//                           // SizedBox(
//                           //   height: 10,
//                           // ),
//                           Column(
//                             children: [
//                               Container(
//                                 // width: 800,
//                                 // height: 50,
//                                 // decoration: BoxBorder(
//                                 // border: OutlineInputBorder(
//                                 //   // borderRadius: new BorderRadius.circular(25.0),
//                                 //   borderSide: BorderSide(),
//                                 // ),
//                                 // ),
//                                 child: DropdownButton(
//                                   // Initial Value
//
//                                   value: dropdownvalue1,
//                                   // Down Arrow Icon
//
//                                   icon: const Icon(Icons.keyboard_arrow_down),
//
//                                   // Array list of items
//                                   items: items1.map((String items) {
//                                     return DropdownMenuItem(
//                                       value: items,
//                                       child: Text(items),
//                                     );
//                                   }).toList(),
//                                   // After selecting the desired option,it will
//                                   // change button value to selected value
//                                   onChanged: (String? newValue) {
//                                     // setState(() {
//                                     //   dropdownvalue = newValue!;
//                                     // }
//                                     // )
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ]
//                   ),
//
//                   Container(
//                     height: 35,
//                     width: 35,
//                     color: Colors.blue.shade50,
//                     child: Image.asset("assets/images/notification.png"),
//                   ),
//                     ],
//                   ),
//
//
//
//
//             ),
//           ),
//           SizedBox(height: 10,),
//           Container(
//             height: 200,
//             width: 400,
//             color: Colors.blue.shade50,
//           )
//         ],
//
//
//
//       ),
//
//     );
//   }
// }

// class fourthRoute extends StatelessWidget {
//   fourthRoute({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   // TabController _tabcontroller;
//   // TabController _tabcontroller = TabController(vsync: , length: 3);
//
//   // void initState() {
//   // super.initState();
//   //
//   // _tabbarcontroller = TabController(vsync: this, length: 3);
//   // }
//
//   String dropdownvalue1 = 'Ahmedabad';
//
//   // List of items in our dropdown menu
//   var items1 = [
//     'Ahmedabad',
//     'Mehsana',
//     'Gandhinagar',
//     'Surat',
//   ];
//
//   // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   // final ScrollController _scrollController = ScrollController();
//   // int _selectedContainer = 0;
//   //
//   // void _showContainer(int index) {
//   //   setState(() {
//   //     _selectedContainer = index;
//   //   });
//   //
//   //   // Automatically scroll to the selected container
//   //   double scrollPosition = index * MediaQuery.of(context).size.width;
//   //   _scrollController.animateTo(
//   //     scrollPosition,
//   //     duration: Duration(milliseconds: 300),
//   //     curve: Curves.easeInOut,
//   //   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: <Widget>[
//             _top(),
//             _body(context),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _top() {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   SizedBox(
//                     // height: 40,
//                     // width: 40,
//                     // color: Colors.grey,
//                     child: Image.asset(
//                       "assets/images/sidemenu.png",
//                       height: 40,
//                       width: 40,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Welcome, ' + '${title}',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                       Row(children: [
//                         Icon(Icons.location_on_outlined),
//                         // SizedBox(
//                         //   height: 10,
//                         // ),
//                         Container(
//                           // width: 800,
//                           // height: 50,
//                           // decoration: BoxBorder(
//                           // border: OutlineInputBorder(
//                           //   // borderRadius: new BorderRadius.circular(25.0),
//                           //   borderSide: BorderSide(),
//                           // ),
//                           // ),
//                           child: DropdownButton(
//                             // Initial Value
//
//                             value: dropdownvalue1,
//                             // Down Arrow Icon
//
//                             icon: const Icon(Icons.keyboard_arrow_down),
//
//                             // Array list of items
//                             items: items1.map((String items) {
//                               return DropdownMenuItem(
//                                 value: items,
//                                 child: Text(items),
//                               );
//                             }).toList(),
//                             // After selecting the desired option,it will
//                             // change button value to selected value
//                             onChanged: (String? newValue) {
//                               // setState(() {
//                               //   dropdownvalue = newValue!;
//                               // }
//                               // )
//                             },
//                           ),
//                         ),
//                       ])
//                     ],
//                   ),
//                 ],
//               ),
//               Container(
//                 height: 35,
//                 width: 35,
//                 color: Colors.blue.shade50,
//                 child: Image.asset("assets/images/notification.png"),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   _body(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           // height: MediaQuery.of(context).size.height*0.3,
//           height: 200,
//           decoration: BoxDecoration(
//             borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//             color: Colors.blue.shade50,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               //***********************************************
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           "₹ 1,500",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 30),
//                         ),
//                         Text(
//                           "Total Earning",
//                           style: TextStyle(color: Colors.grey, fontSize: 16),
//                         )
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 90,
//                           color: Colors.white,
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(6.0),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Text(
//                                       "Monthly",
//                                       style: TextStyle(
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.normal),
//                                     ),
//                                     Icon(Icons.keyboard_arrow_down)
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Container(
//                           width: 85,
//                           height: 16,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(
//                                 Icons.arrow_downward,
//                                 color: Colors.red.shade200,
//                                 size: 20,
//                               ),
//                               Text(
//                                 "-4%",
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 "(₹ 60)",
//                                 style: TextStyle(color: Colors.grey),
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Divider(
//                   thickness: 2,
//                 ),
//
//                 //diff cards
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(5.0)),
//                         color: Colors.white,
//                       ),
//                       height: 66,
//                       width: 98,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "25",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                                 Image.asset("assets/images/totalorder.png"),
//                               ],
//                             ),
//                             Text(
//                               "Total Order",
//                               style: TextStyle(color: Colors.grey),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(5.0)),
//                         color: Colors.white,
//                       ),
//                       height: 66,
//                       width: 98,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "05",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                                 Image.asset("assets/images/neworder.png"),
//                               ],
//                             ),
//                             Text(
//                               "New Order",
//                               style: TextStyle(color: Colors.grey),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(5.0)),
//                         color: Colors.white,
//                       ),
//                       height: 66,
//                       width: 98,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "20",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                                 Image.asset("assets/images/currentorder.png"),
//                               ],
//                             ),
//                             Text(
//                               "CurrentOrder",
//                               style: TextStyle(color: Colors.grey),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // **************Recent orders*****************
//         SizedBox(
//           // height: MediaQuery.of(context).size.height*0.1,
//           height: 20,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Align(
//               child: Text(
//                 "Recent Orders",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//               ),
//               alignment: Alignment.centerLeft,
//             ),
//             Text(
//               "See all",
//               style: TextStyle(color: Colors.grey),
//             )
//           ],
//         ),
//
//         // **************Box*************
//         SizedBox(
//           height: 20,
//         ),
//         Container(
//           height: 260,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//               color: Color(0xffF6F6F6),
//               borderRadius: BorderRadius.circular(10)),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(
//                   height: 40,
//                   width: MediaQuery.of(context).size.width,
//                   child: DefaultTabController(
//                     length: 2,
//                     child: TabBar(
//                       // controller: _tabController,
//                       // controller: _tabbarcontroller,
//                       indicator: BoxDecoration(
//                           color: Colors.lightGreen.shade300,
//                           borderRadius: BorderRadius.circular(10)),
//                       unselectedLabelColor: Colors.grey,
//                       labelColor: Colors.black,
//
//                       tabs: [
//                         Tab(
//                           child: Container(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Text(
//                                   "New Order",
//                                 ),
//                                 CircleAvatar(
//                                   backgroundColor: Colors.black,
//                                   radius: 10.0,
//                                   child: Text(
//                                     "05",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 10),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Tab(
//                             child: TextButton(
//                           child: Text(
//                             "Current Orders",
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                           onPressed: () {
//                             Card2(context);
//                           },
//                         )),
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 //boxes
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(children: [
//                     Card1(context),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Card2(context),
//                     // SizedBox(width: 10,),
//                     // Card1(context),
//                     // SizedBox(width: 10,),
//                     // Card1(context),
//                     // SizedBox(width: 10,),
//                     // Card1(context),
//                     // SizedBox(width: 10,),
//                   ]),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   //card 1 method
//   Card1(context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24.0),
//       child: Container(
//         height: 160,
//         width: MediaQuery.of(context).size.width * 0.88,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10), color: Colors.white),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 50,
//                     child: Image.asset("assets/images/graduation.png"),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.blue.shade100,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Digital Education Initiatives",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 15),
//                       ),
//                       Row(
//                         children: [
//                           Image.asset(
//                             "assets/images/calendar.png",
//                           ),
//                           Text(
//                             "12 August 2024",
//                             style: TextStyle(color: Colors.grey),
//                           )
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Divider(),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         "Rohit Sharma",
//                         style: TextStyle(fontWeight: FontWeight.w500),
//                       ),
//                       SizedBox(height: 3),
//                       Text(
//                         "₹ 528",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Container(
//                     width: 90,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: Colors.blue.shade100,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         children: [
//                           Image.asset("assets/images/approvelogo.png"),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text("Approve"),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                       width: 90,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         color: Colors.pink.shade100,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Image.asset("assets/images/rejectedlogo.png"),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text("Reject"),
//                           ],
//                         ),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Card2(context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24.0),
//       child: Container(
//         height: 160,
//         width: MediaQuery.of(context).size.width * 0.88,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10), color: Colors.white),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 50,
//                     child: Image.asset("assets/images/graduation.png"),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.blue.shade100,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Column(
//                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Digital Education Initiatives",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 15),
//                       ),
//                       Row(
//                         children: [
//                           Image.asset(
//                             "assets/images/calendar.png",
//                           ),
//                           Text(
//                             "12 August 2024",
//                             style: TextStyle(color: Colors.grey),
//                           )
//                         ],
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Divider(),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         "Rohit Sharma",
//                         style: TextStyle(fontWeight: FontWeight.w500),
//                       ),
//                       SizedBox(height: 3),
//                       Text(
//                         "₹ 528",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   // SizedBox(width: 20,),
//                   Container(
//                     height: 50,
//                     width: 80,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.black,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Icon(
//                           Icons.chat,
//                           color: Colors.white,
//                         ),
//                         // SizedBox(width:10),
//                         Text(
//                           "Chat",
//                           style: TextStyle(color: Colors.white),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// //card2 method
//
// }

// class SecondRoute extends StatelessWidget {
//   // const SecondRoute({super.key});
//   //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           // height: 600,
//           // width: 500,
//           child: Stack(
//               children:[
//
//                 Container(
//                   height: 900,
//                   width: 500,
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/images/background.png"),fit: BoxFit.cover),
//
//                     ),
//                     child: Column(
//                       children: [
//                         SizedBox(height: 150,),
//                         Text("Welcome to MeraForm",style:
//                         TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.white,),),
//                         Text(
//                           "We're thrilled to see you again!",
//                           style: TextStyle(color: Colors.grey,fontSize: 15,),
//                         )
//                       ],
//                     ),),
//                 ),
//
//                 Positioned(
//                   top: 300,
//
//                   child: Container(
//                     height: 800,
//                     width: 380,
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         children: [
//                           SizedBox(height: 20,),
//                           Text("Enter your registered mobile number to receive a One-Time Password (OTP) for secure login.",style: TextStyle(color: Colors.black),),
//                           SizedBox(height: 20,),
//                           Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.bold),),
//                           SizedBox(height: 20,),
//                           TextFormField(
//
//                             decoration: InputDecoration(
//                               // labelText: "999-999-552-5541",
//                               //   prefixIcon: Padding(
//                               //     padding: const EdgeInsets.all(1.0),
//                               prefixIcon: Image.asset(
//                                 'assets/images/indian_flag.png',
//                                 width: 1,
//                                 height: 1,
//                                 // fit: BoxFit.fill,
//                               ),
//
//
//
//                               hintText:"999-999-552-5541" ,
//
//                               fillColor: Colors.white,
//
//                               border:OutlineInputBorder(
//
//                                 // borderRadius: new BorderRadius.circular(25.0),
//                                 borderSide: BorderSide(),
//                               ),
//                               //fillColor: Colors.green
//                             ),),
//
//                           SizedBox(height: 30,),
//                           Text("Enter the 6-digit OTP"),
//                           Row(
//                           children: [
//
//                             TextFormField(
//
//                               decoration: InputDecoration(
//                                 border:OutlineInputBorder(
//
//                                   // borderRadius: new BorderRadius.circular(25.0),
//                                   borderSide: BorderSide(),
//                                 ),
//                                 //fillColor: Colors.green
//                               ),
//                             ),
//
//
//
//
//                           ],
//                           ),
//                           SizedBox(height: 280,),
//
//
//                           SizedBox(
//                             width: 600,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                                 // style: ElevatedButton.styleFrom(
//                                 //
//                                 //   backgroundColor: Colors.purple,
//                                 // ),
//
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.lightGreen,
//                                 ),
//
//                                 child:Text("Proceed Ahead",style: TextStyle(color: Colors.black),)),
//                           )
//                         ],
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0),topRight:Radius.circular(30.0)),
//
//                     ),
//                   ),
//                 ),
//
//               ]
//           ),
//         )
//     );}}
