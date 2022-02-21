import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  String testo;
  BlueButton({required this.testo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 3, 159, 243),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Center(
        child: Text(
          testo,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
