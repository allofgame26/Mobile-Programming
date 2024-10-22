import 'package:flutter/material.dart';
import 'about_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Track the selected index

  // List of pages to navigate to
  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    // Initialize the pages
    _pages.add(_buildHomePage());
    _pages.add(AboutPage());
    _pages.add(ProfilePage(username: widget.username));
  }

  // Build the home page content
  Widget _buildHomePage() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.tealAccent, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Welcome, ${widget.username}!',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: const EdgeInsets.all(20),
                  children: [
                    _buildCard(
                      context,
                      'About',
                      Icons.info,
                      () {
                        setState(() {
                          _selectedIndex = 1; // Navigate to About page
                        });
                      },
                    ),
                    _buildCard(
                      context,
                      'Profile',
                      Icons.person,
                      () {
                        setState(() {
                          _selectedIndex = 2; // Navigate to Profile page
                        });
                      },
                    ),
                    // Add more cards as needed
                    _buildCard(
                      context,
                      'Orders',
                      Icons.shopping_cart,
                      () {
                        // Navigate to Orders Page
                      },
                    ),
                    _buildCard(
                      context,
                      'Settings',
                      Icons.settings,
                      () {
                        // Navigate to Settings Page
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex, // Set the current index
        selectedItemColor: Colors.teal,
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
      ),
    );
  }

  Widget _buildCard(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.teal),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
