import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedIdx = 0;
  static List<Widget> pages = [
    Placeholder(
      color: Colors.red,
    ),
    Placeholder(
      color: Colors.green,
    ),
    Placeholder(
      color: Colors.blue,
    ),
  ];

  void onItemTapped(int idx) {
    setState(() {
      _selectedIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Pastry Course", style: Theme.of(context).textTheme.headline6),
      ),
      body: pages[_selectedIdx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Item1"),
          const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Item2"),
          const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Item3"),
        ],
        currentIndex: _selectedIdx,
        onTap: onItemTapped,
      ),
    );
  }
}
