import 'package:class_13_bottom_navigation_drawer/utls/alert_dialogue.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: Center(
        child: ElevatedButton(
          onPressed: (){MyAlertDialogue(context);},
          child: Text('Click Me'),

        ),
      ),
    );
  }
}