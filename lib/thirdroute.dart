import 'package:flutter/material.dart';
import 'fourthroute.dart';


class thirdRoute extends StatefulWidget {
  const thirdRoute({Key? key,required this.title,required this.firstname}) : super(key: key);
  final String title;
  final String firstname;

  // const thirdRoute(this.firstname);


  @override
  State<thirdRoute> createState() => _thirdRouteState();
}

class _thirdRouteState extends State<thirdRoute> {
  // final String firstname='';



  String dropdownvalue = 'Select State';

  // List of items in our dropdown menu
  var items = [
    'Select State',
    'Gujarat',
    'Tamilnadu',
    'Rajasthan',
  ];

  String dropdownvalue1 = 'Select City';

  // List of items in our dropdown menu
  var items1 = [
    'Select City',
    'Mehsana',
    'Gandhinagar',
    'Surat',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 100.0),
        child: SingleChildScrollView(
          child: Container(
              child: Column(
                children: [
                  Align(
                    child: Text(
                      "Add Address",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: Text(
                      "Please enter the details of your current address.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Container(
                      color: Colors.blue.shade50,
                      width: 450,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Work Address *",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    child: Text(
                      "Address Line 1*",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Address"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "Address Line 2",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Address"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "State",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          height: 50,
                          // decoration: BoxBorder(
                          // border: OutlineInputBorder(
                          //   // borderRadius: new BorderRadius.circular(25.0),
                          //   borderSide: BorderSide(),
                          // ),
                          // ),
                          child: DropdownButton(
                            // Initial Value

                            value: dropdownvalue,
                            // Down Arrow Icon

                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "City",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          height: 50,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    child: Text(
                      "Pin code",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Pin code"),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Container(
                      color: Colors.blue.shade50,
                      width: 450,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Home Address",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    child: Text(
                      "Address Line 1*",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Address"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "Address Line 2",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Address"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "State",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          height: 50,
                          // decoration: BoxBorder(
                          // border: OutlineInputBorder(
                          //   // borderRadius: new BorderRadius.circular(25.0),
                          //   borderSide: BorderSide(),
                          // ),
                          // ),
                          child: DropdownButton(
                            // Initial Value

                            value: dropdownvalue,
                            // Down Arrow Icon

                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    child: Text(
                      "City",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Column(
                      children: [
                        Container(
                          width: 800,
                          height: 50,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    child: Text(
                      "Pin code",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // borderRadius: new BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                          hintText: "Enter Pin code"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    child: Row(
                      children: [
                        Checkbox(
                          // tristate: true, // Example with tristate
                          value: true,
                          activeColor: Colors.black,
                          onChanged: (bool? newValue) {
                            // setState(() {
                            //   value = newValue;
                            // });
                          },
                        ),
                        Text(
                          "By clicking, I agree to the Privacy Policy & Terms & Condition.",
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: SizedBox(
                      width: 600,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => fourthRoute(title:widget.firstname),
                                ));
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
                            "Save Details",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
