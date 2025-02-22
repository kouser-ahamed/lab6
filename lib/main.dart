import 'package:flutter/material.dart';

void main() {
  runApp(const Day6());
}

class Day6 extends StatefulWidget {
  const Day6({super.key});

  @override
  Day6State createState() => Day6State();
}

class Day6State extends State<Day6> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("Settings Page")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Day-6",
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blueAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.contact_mail, color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Text(
                      "Contacts",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                hoverColor: Colors.grey[700],
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                hoverColor: Colors.grey[700],
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                hoverColor: Colors.grey[700],
                textColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Day-6",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.blueGrey[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to the Advanced UI",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blueAccent),
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text("Click Me", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 40),
                _pages[_selectedIndex],
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
