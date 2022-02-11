import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  String testo;
  BlackButton({required this.testo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
          border: Border.all(color:  Color.fromARGB(255, 3, 159, 243), ),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Center(
          child: Text(
        testo,
        style: TextStyle(
            color: Colors.white, 
            fontSize: 18,
             fontWeight: FontWeight.bold),
      )),
    );
  }
}
