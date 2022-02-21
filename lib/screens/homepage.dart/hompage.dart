import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sfo.png"), fit: BoxFit.cover),
        ),
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 27, 0, 65),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {},
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
