import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // TODO: Add state variables and functions
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Container(color: Colors.red),
    // TODO: Replace with Card2
    Container(color: Colors.green),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foodlin',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      // TODO: Add bottom navigation bar
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // 6
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
