import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'slider_screen.dart';
import 'grid_screen.dart';
import 'calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 3 App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    CounterScreen(),
    SliderScreen(),
    GridScreen(),
    CalculatorScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Slider'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Grid'),
          BottomNavigationBarItem(icon: Icon(Icons.change_history), label: 'Calculator'),
        ],
      ),
    );
  }
}
