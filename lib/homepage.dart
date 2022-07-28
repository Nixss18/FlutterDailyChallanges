import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_challenge/custom_card_61.dart';
import 'package:ui_challenge/custom_card_98.dart';
import 'package:ui_challenge/custom_ui_22.dart';

import 'custom_card_60.dart';
import 'custom_ui_58.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI Challenge"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomUi58(screenWidth: MediaQuery.of(context).size.width),
            CustomCard98(),
            Divider(),
            CustomCard61(),
            CustomUi22(),
            CustomCard060(),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.all(30.0),
      //       child: Text(
      //         "Latest stories, tailored for you.",
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontWeight: FontWeight.w800,
      //           fontSize: 36,
      //         ),
      //       ),
      //     ),

      //   ],
      // ),
    );
  }
}
