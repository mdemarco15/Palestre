import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palestre/screens/widget/blackButton.dart';
import 'package:palestre/screens/widget/blueButton.dart';

class RecuperaPw extends StatelessWidget {
  const RecuperaPw({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            SizedBox(height: 380),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19.1),
                  child: Text(
                    "Recupera Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Container(margin: const EdgeInsets.all(5)),
                      Text(
                        "Inserisci l'email usata per la registrazione per ricevere il link di recupero.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 45),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Email",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Inserisci Email",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  cursorColor: Colors.white,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => null,
                  child: BlueButton(
                    testo: 'Invia',
                  ),
                )
              ],
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => null,
                  child: BlackButton(
                    testo: 'Indietro',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
