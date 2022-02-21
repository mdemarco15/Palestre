import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/pages/calcetto.dart';
import 'package:palestre/screens/pages/gym.dart';
import 'package:palestre/screens/pages/homepage.dart';
import 'package:palestre/screens/pages/padel.dart';
import 'package:palestre/screens/pages/piscina.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentIndex = 1;
  final screens = [HomePage(), Calcetto(), Gym(), Piscina(), Padel()];

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 6, 0, 34),
          selectedItemColor: Color.fromARGB(255, 17, 146, 252),
          unselectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Calcetto',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Gym',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pool),
              label: 'Piscina',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_tennis),
              label: 'Padel',
            ),
          ],
        ),
      ),
    );
  }
}
