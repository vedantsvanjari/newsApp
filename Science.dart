import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:new_newsapp/main.dart';
import 'World.dart';
import 'Sports.dart';
import 'Cricket.dart';
import 'Football.dart';
import 'Science.dart';
import 'Entertainment.dart';
import 'Movies.dart';
import 'Food.dart';
import 'HomePage.dart';
import 'profile.dart';

class SciencePage extends StatefulWidget {
  const SciencePage({super.key});

  @override
  State<SciencePage> createState() => _SciencePageState();
}

class _SciencePageState extends State<SciencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // AppBar height
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4), // Shadow color
                offset: const Offset(0, 4), // Shadow direction (only down)
                blurRadius: 8.0, // Blurring effect of the shadow
              ),
            ],
          ),
          child: AppBar(
            elevation: 0,
            title: const Text(
              'newsTODAY',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const profile())
                      );
                    },
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
          children: [
            Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const MyApp())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('All',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const WorldPage())
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[700],
                      ),
                      child: Text('World',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const SportsPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Sports',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const CricketPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Cricket',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const FootballPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Football',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Sci-Tech',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const EntertainmentPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Entertainment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const MoviesPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Movies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const FoodPage())
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.symmetric(vertical:4.0,horizontal: 4.0),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[700],
                        ),
                        child: Text('Food',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Welcome to Science and Technology News',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
            ),
          ],
        ),
    );
  }
}
