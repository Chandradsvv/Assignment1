
//import 'dart:js';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/services.dart';
import 'highest_rated_data.dart';

class screen extends StatelessWidget {
  Widget listViewservice(){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: servicesData.length,
        itemBuilder: (context, index){
          String parlourName = servicesData[index]['name'].toString();
          String parlourIcon = servicesData[index]['icon'].toString();
          return Container(
            //height: 300,
            //width: 200,

            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              //  border: Border.all(
               //   width: 0.5,
               //   color: Colors.black,
               // )

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(17.0),
                    image: DecorationImage(
                      image: AssetImage(parlourIcon),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    parlourName,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: const Color.fromRGBO(68, 66, 66, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

  Widget servicesListView() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: highestRatedData.length,
        itemBuilder: (context, index) {
          String salonIcon = highestRatedData[index]['icon'].toString();
          String salonName = highestRatedData[index]['name'].toString();
          String salonDistance = highestRatedData[index]['distance'].toString();
          String salonLocation = highestRatedData[index]['location'].toString();
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.5,
                color: Colors.black,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Salon Image
                Container(
                  width: 201.0,
                  height: 108.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(17.0),
                    image: DecorationImage(
                      image: AssetImage(salonIcon),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 7.0),
                // Salon Name
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    salonName,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: const Color.fromRGBO(68, 66, 66, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2.0),
                // Salon Location
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(
                    salonLocation,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 12.0,
                        color: const Color.fromRGBO(147, 147, 147, 1),
                      ),
                    ),
                  ),
                ),
                // Salon Star + Distance
                Container(
                  width: 201,
                  child: Row(
                    // Distance Line
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Star Icon
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 11,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            salonLocation,
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 10.0,
                                color: const Color.fromRGBO(147, 147, 147, 1),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          );
        });
  }


  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ui_design'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
               // padding: EdgeInsets.all(10),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromRGBO(228, 81, 113, 1),
                      Color.fromRGBO(168,97,189,1),
                      Color.fromRGBO(26,50,99,1)

                    ],

                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Container(
                            height: 18,
                            child: const Image(
                              image: AssetImage('asset/Group 5129@2x.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          //Icon(Icons.doorbell)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Pikashi Jain",
                            textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                       // mainAxisAlignment: MainAxisAlignment.start,
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //width: MediaQuery.of(context).size.width,
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),

                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Text(
                              "Time Square Plaza, New York",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                            ),
                          ),
                            )
                          ),
                          SizedBox(
                              width: 5,
                          ),
                          Container(
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  Container(
                   // padding: EdgeInsets.all(10),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      top: 24,
                      bottom: 24,
                      left: 16,
                      right: 16,
                    ),
                    //color: Colors.orange,
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                  "Heighest Rated",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(29, 38, 119, 1),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "View all",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(29, 38, 119, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],

                        ),
                        Container(
                          height: 208,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(
                            top: 16,
                            right: 16,
                          ),

                          //color: Colors.black38,
                          child: servicesListView()
                        ),
                      ],
                    )
                  ),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    //color: Colors.orange,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                             padding: EdgeInsets.only(
                               left: 20,
                              ),
                              height: 50,
                             // width: MediaQuery.of(context).size.width,
                              //color: Colors.blueAccent,
                              child: Text(
                                  "Services",
                                style:GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    textStyle: const TextStyle(
                                      color: Color.fromRGBO(29, 38, 119, 1),
                                    ),
                                  ),
                                ),
                              ),
                            Container(
                              height: 50,
                             // width: 70,
                              //width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text(
                                "View all",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(29, 38, 119, 1)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          //color: Colors.black,
                          padding: EdgeInsets.all(10),
                          child: listViewservice(),
                        ),

                      ],
                    ),
                  ),


                ],
              ),


              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,

                margin: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.all(30),
                height: 120,
                width: 120,



               // color: Colors.blue,
                child: DottedBorder(
                  color: Colors.black,//color of dotted/dash line
                  strokeWidth: 3, //thickness of dash/dots
                  dashPattern: [10,6],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                      Icon(
                        Icons.add_a_photo,
                        color: Colors.pink,
                        size: 50.0,
                        //semanticLabel: 'Text to announce in accessibility modes',
                      ),
                        //height:180, //height of inner container
                        //width: double.infinity, //width to 100% match to parent container.
                    ]  // color:Colors.yellow
                    ),
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      hintText: "Full Name",
                    ),
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        hintText: "Email Id",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    child: TextField(
                      obscureText: true,
                      decoration:  InputDecoration(
                          suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        hintText: "Create Password",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                    child: TextField(
                      obscureText: true,
                      decoration:  InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        hintText: "Confirm Password",
                      ),
                    ),
                  ),

                ],
              ),

            ],


          ),
        ),
      ),
    );
  }
}
