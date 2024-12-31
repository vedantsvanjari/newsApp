import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'World.dart';
import 'Sports.dart';
import 'Cricket.dart';
import 'Football.dart';
import 'Science.dart';
import 'Entertainment.dart';
import 'Movies.dart';
import 'Food.dart';
import 'detailedPage.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: (){},
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
                        color: Colors.white,
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>const SciencePage())
                    );
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
              child: const ArticlesListScreen()
          ),
        ],
      );


  }
}

class ArticlesListScreen extends StatefulWidget {
  const ArticlesListScreen({super.key});

  @override
  _ArticlesListScreenState createState() => _ArticlesListScreenState();
}

class _ArticlesListScreenState extends State<ArticlesListScreen> {
  List<dynamic> _articles = []; // To store the articles

  @override
  void initState() {
    super.initState();
    _loadJsonData(); // Load JSON data on initialization
  }

  Future<void> _loadJsonData() async {
    try {
      // Load JSON file from assets
      final String jsonString =
      await rootBundle.loadString('assets/sample.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      // Extract the articles list
      setState(() {
        _articles = jsonData['articles'];
      });
    } catch (error) {
      debugPrint('Error loading JSON: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          final article = _articles[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedPage(article: article),
                  )
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.center, // Center-align the content
                children: [
                  // Image at the top, centered
                  Image.network(
                    article['urlToImage'] ?? '',
                    width: 400,
                    height: 300,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 50),
                  ),
                  const SizedBox(height: 8), // Spacing between image and title

                  // Title below the image
                  Text(
                    article['title'] ?? 'No Title',
                    textAlign: TextAlign.left, // Center-align the title
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                      height: 4), // Spacing between title and description

                  // Description below the title
                  Text(
                    article['description'] ?? 'No Description',
                    textAlign: TextAlign.left, // Center-align the description
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow
                        .ellipsis, // Ellipsis if the text is too long
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}