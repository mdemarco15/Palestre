import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 0, 29, 53),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 24),
            Divider(color: Colors.white),
            SizedBox(height: 5),
            buildMenuItem(text: 'Account', icon: Icons.perm_identity_outlined),
            SizedBox(height: 5),
            buildMenuItem(text: 'Modifica Password', icon: Icons.lock_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Le Mie Prenotazioni',
                icon: Icons.bookmark_border_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Abbonamenti', icon: Icons.card_membership_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Notifiche', icon: Icons.notifications_outlined),
            SizedBox(height: 5),
            buildMenuItem(
                text: 'Dove Siamo', icon: Icons.gps_not_fixed_outlined),
            SizedBox(height: 5),
            buildMenuItem(text: 'Logout', icon: Icons.logout_outlined),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }
}
