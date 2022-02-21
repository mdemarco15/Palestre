import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:palestre/screens/widget/custom_appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: CustomBar(),
        appBar: AppBar(
          title: Text('Notuaith'),
        ),
      );
}
