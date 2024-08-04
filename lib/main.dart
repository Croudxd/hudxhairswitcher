import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Variable to keep track of the current content
  Widget _currentContent = Center(child: Text('Welcome', style: TextStyle(fontSize: 24)));

  void _updateContent(Widget newContent) {
    setState(() {
      _currentContent = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Row(
        children: <Widget>[
          // Left-side menu bar
          Container(
            width: 150, // Width of the menu bar
            color: const Color.fromARGB(255, 172, 172, 172),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0, 
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      )
                    ),
                  onPressed: () {
                    _updateContent(Center(child: Text('HUDs', style: TextStyle(fontSize: 24))));
                  },
                  child: Text('HUDs'),
                  
                ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0, 
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      )
                    ),
                  onPressed: () {
                    _updateContent(Center(child: Text('Xhairs', style: TextStyle(fontSize: 24))));
                  },
                  child: Text('Xhairs'),
                ),
                )
              ],
            ),
          ),
          // Main content area
          Expanded(
            child: _currentContent,
          ),
        ],
      ),
    );
  }
}
