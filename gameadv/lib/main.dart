import 'package:flutter/material.dart';

void main() {
  runApp(GameAdvisorApp());
}

class GameAdvisorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Advisor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Pacifico', // Custom font
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Grey background
      appBar: AppBar(
        title: Text('Game Advisor'),
      ),
      body: Column(
        children: [
          // Video Loop (Assuming you have a video widget)
          Expanded(
            child: Placeholder(), // Replace with your video widget
          ),
          // Chat Bubble with Brief History Text
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white, // Chat bubble background color
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              'Video games have a rich history, evolving from simple pixelated graphics to immersive virtual worlds. They offer a unique blend of entertainment, creativity, and technological advancement.',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          // Blue Background for Buttons
          Container(
            color: Colors.blue,
            child: Column(
              children: [
                // Scrollable Pictures with Larger Width
                Container(
                  height: 120.0, // Adjust the height as needed
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      12, // Number of pictures
                          (index) => Container(
                        width: 240.0, // Double the width for larger pictures
                        margin: EdgeInsets.all(8.0),
                        color: Colors.grey, // Placeholder color
                        child: Center(
                          child: Text('Picture $index'),
                        ),
                      ),
                    ),
                  ),
                ),
                // Sticky Bottom Buttons
                BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Main',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.games),
                      label: 'New Games',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.star),
                      label: 'Recommended',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                  ],
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  currentIndex: 0,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    // Handle navigation based on the selected button
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
