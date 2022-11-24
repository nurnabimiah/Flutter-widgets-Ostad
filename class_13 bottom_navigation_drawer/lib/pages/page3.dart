import 'package:flutter/material.dart';

import '../utls/alert_dialogue.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
        child: Center(
          child: ElevatedButton(
            onPressed: (){MyAlertDialogue(context);},
            child: Text('Click Me'),

          ),
        ),
      ),
    );
  }
}