import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/business.dart';
import 'package:news_app/pages/covid.dart';
import 'package:news_app/pages/sampleNews.dart';
import 'package:flutter/services.dart';
import 'package:news_app/pages/sports.dart';
import 'package:news_app/pages/technology.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: Color(0xFF23272a),
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Positioned(
                    child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal:12.0),
                    child: Icon(
                      Icons.menu,
                      size: 35,
                      //color:Color(0xFF93A3D7),
                      color: Color(0xFF99aab5),
                    ),
                  ),
                  ),
                  Center(
                    child: Container(
                      height: 44,
                      child: Center(
                        child: Text(
                          'News App',
                          style: TextStyle(
                            color: Color(0xFF99aab5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              overflow: Overflow.clip,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(

                  cursorColor: Color(0xFF99aab5),
                  style: TextStyle(
                    color: Color(0xFF99aab5),
                  ),
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Color(0xFF99aab5), width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(color: Color(0xFF99aab5), width: 3.0),
                    ),

                    hintText: 'Enter a search term',
                  hintStyle: TextStyle(color: Color(0xFF282b30))
                ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 25,
                children: [



                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TrendingNews()));
                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                         Radius.circular(15)),
                        color: Color(0xFF282b30),
                         // Image.asset('assets/splash.jpg'),
                        boxShadow: [
                              // color: Colors.white, //background color of box
                              BoxShadow(
                              color: Color(0xFF2c2f33),
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                              4.0, // Move to right 10  horizontally
                              4.0, // Move to bottom 10 Vertically
                              ),
                              )
                              ],
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                              decoration: BoxDecoration(
                              image: new DecorationImage(
                              image: new AssetImage("assets/trend.jpg"),
                              ),
                            ),
                            ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                              'Trending',
                              style: TextStyle(
                                color: Color(0xFF99aab5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Corona()));
                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15)),
                        color: Color(0xFF282b30),
                        // Image.asset('assets/splash.jpg'),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Color(0xFF2c2f33),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              4.0, // Move to right 10  horizontally
                              4.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/trend.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'COVID-19',
                                style: TextStyle(
                                  color: Color(0xFF99aab5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),



                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Business()));

                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15)),
                        color: Color(0xFF282b30),
                        // Image.asset('assets/splash.jpg'),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Color(0xFF2c2f33),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              4.0, // Move to right 10  horizontally
                              4.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/bus1.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Business',
                                style: TextStyle(
                                  color: Color(0xFF99aab5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),



                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Technology()));

                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15)),
                        color: Color(0xFF282b30),
                        // Image.asset('assets/splash.jpg'),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Color(0xFF2c2f33),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              4.0, // Move to right 10  horizontally
                              4.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/trend.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Technology',
                                style: TextStyle(
                                  color: Color(0xFF99aab5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Sports()));

                    },
                    child: Container(
                      width: 150,
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15)),
                        color: Color(0xFF282b30),
                        // Image.asset('assets/splash.jpg'),
                        boxShadow: [
                          // color: Colors.white, //background color of box
                          BoxShadow(
                            color: Color(0xFF2c2f33),
                            blurRadius: 5.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              4.0, // Move to right 10  horizontally
                              4.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/bus1.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Gadgets',
                                style: TextStyle(
                                  color: Color(0xFF99aab5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),),
                          ],
                        ),
                      ),
                    ),
                  ),




                  Container(
                    width: 150,
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)),
                      color: Color(0xFF282b30),
                      // Image.asset('assets/splash.jpg'),
                      boxShadow: [
                        // color: Colors.white, //background color of box
                        BoxShadow(
                          color: Color(0xFF2c2f33),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            4.0, // Move to right 10  horizontally
                            4.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage("assets/bus1.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              '###',
                              style: TextStyle(
                                color: Color(0xFF99aab5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
            );

  }
}

