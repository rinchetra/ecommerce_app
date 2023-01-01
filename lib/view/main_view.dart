import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/view/home_view.dart';
import 'package:flutter/material.dart';

class ViewMain extends StatefulWidget {
  const ViewMain({super.key});

  @override
  State<ViewMain> createState() => _ViewMainState();
}

class _ViewMainState extends State<ViewMain> {

  int _selectedIndex = 0;
  Color currentColors = Colors.blue;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[

    HomeView(),
    Center(),
    Center(),
        ProfilePage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (value) {
          _onItemTapped(value);
        },
      ),
    );
  }
}