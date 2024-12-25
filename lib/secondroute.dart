import 'package:flutter/material.dart';
import 'thirdroute.dart';


class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  void _nextProceedForm() {
    // if(_formKey.currentState!.validate()){
    _formKey.currentState!.validate();
    // final isValid = _formKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // }
    // setState((){});
    // setState(() {
    // });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
          child: Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Welcome!",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                        )),
                    Text(
                        "Its seems like you are new to MeraForm, Please fill out the details below to create your account and get started on your journey with us."),
                    SizedBox(
                      height: 55,
                    ),
                    Row(
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 105,
                        ),
                        Text(
                          "Last Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        // SizedBox(width: 6,),
                        Expanded(
                            child: TextFormField(
                              controller: firstnameController,
                              decoration: const InputDecoration(
                                fillColor: Colors.black,
                                border: OutlineInputBorder(),
                                labelText: "First Name",
                              ),
                              keyboardType: TextInputType.text,
                            )),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                            child: TextFormField(
                              controller: lastnameController,
                              decoration: const InputDecoration(
                                fillColor: Colors.black,
                                border: OutlineInputBorder(),
                                labelText: "Last Name",
                              ),
                              keyboardType: TextInputType.text,
                            )),
                        // SizedBox(width: 6,),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(children: [
                      Row(
                        children: [
                          Text(
                            "Mobile Number*",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
// controller: mobilenocontroller,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: "",

                          // labelText: "999-999-552-5541",
                          //   prefixIcon: Padding(
                          //     padding: const EdgeInsets.all(1.0),
                          prefixIcon: Image.asset(
                            'assets/images/indian_flag.png',
                            width: 1,
                            height: 1,
                            // fit: BoxFit.fill,
                          ),

                          labelText: "Enter Mobile No",

                          fillColor: Colors.white,

                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          //fillColor: Colors.green
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter the phone number';
                          }
                          if (value.length != 10) {
                            return 'please enter a 10 digit mobile number';
                          }
                          return null;
                        },
                        // onFieldSubmitted: (value) {},
                      ),
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
// controller: mobilenocontroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // labelText: "999-999-552-5541",
                        //   prefixIcon: Padding(
                        //     padding: const EdgeInsets.all(1.0),

                        labelText: "Enter Email Address",

                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          // borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      // validator: (monum)=>(monum!.length < 10 || monum!.length == null)?,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return 'please enter the phone number';
                      //   }
                      //   if (value.length != 10) {
                      //     return 'please enter a 10 digit mobile number';
                      //   }
                      //   return null;
                      // },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Aadhar Card Number*",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
// controller: mobilenocontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // labelText: "999-999-552-5541",
                        //   prefixIcon: Padding(
                        //     padding: const EdgeInsets.all(1.0),

                        labelText: "Ex. 1234-5678-9014",

                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          // borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter the Aadhar number';
                        }
                        if (value.length != 12) {
                          return 'please enter a 12 digit Aadhar number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "GST Number",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
// controller: mobilenocontroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        // labelText: "999-999-552-5541",
                        //   prefixIcon: Padding(
                        //     padding: const EdgeInsets.all(1.0),

                        labelText: "Ex. 22AAAA0000A1Z5",

                        fillColor: Colors.white,

                        border: OutlineInputBorder(
                          // borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    SizedBox(
                      width: 600,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              // context,
                              //multiple data
                              MaterialPageRoute(
                                  builder: (context) =>
                                      thirdRoute(title:'',firstname: firstnameController.text)),
                            );
                          },

                          // _formKey.currentState!.validate();

                          // Navigator.push(context,MaterialPageRoute(builder: (context) =>  SecondRoute())
                          // );

                          // style: ElevatedButton.styleFrom(
                          //
                          //   backgroundColor: Colors.purple,
                          // ),

                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen,
                          ),
                          child: Text(
                            "Proceed Ahead",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),

                    // Navigator.push(context,new MaterialPageRoute(builder: (context)=>new fourthRoute(name: new SecondRoute(firstnameController,lastnameController) )));
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
