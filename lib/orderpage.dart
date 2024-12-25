import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:meraform/Homepage.dart';
// import 'package:meraform/secondroute.dart';
// // import 'fifthroute.dart';

class orderpage extends StatefulWidget {
  const orderpage({Key? key}) : super(key: key);
  // final String title;

  // fourthRoute(this.title);

  @override
  State<orderpage> createState() => _orderState();
}

class _orderState extends State<orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Color(0xff1B1B1B)),),
          // backgroundColor: Colors.white,
        ),
      body: Container(
        // color: Colors.white,
      ),


    );}}