import 'package:flutter/material.dart';

class RecuperaPw extends StatelessWidget {
  const RecuperaPw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/sfo.png"),
      ],
    );
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//         image: ExactAssetImage("assets/images/sfo.png"),
//         fit: BoxFit.fitHeight,
//         )
//       ),
//     );
  }
}
