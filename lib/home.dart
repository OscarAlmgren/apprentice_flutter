import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedNavigationIndex = 0;

  static List<Widget> pages = <Widget>[
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.teal,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavigationIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich home.dart',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: pages[_selectedNavigationIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedNavigationIndex,
          onTap: _onItemTapped,
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          items: const <BottomNavigationBarItem>[
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
      ),
    );
  }
}
