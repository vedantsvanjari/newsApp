import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'profile.dart';
import 'SearchPage.dart';
import 'PremiumPage.dart';

void main(){
  runApp((const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex=0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _pages=[
    HomePage(),PremiumPage(),SearchPage()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap:_navigateBottomBar,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey.shade700,
            // backgroundColor: Colors.white12,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Premium'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search',
              ),
            ]),
      ),
    );
      }
}


