import 'package:flutter/material.dart';

import '../utls/alert_dialogue.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: ElevatedButton(
          onPressed: (){MyAlertDialogue(context);},
          child: Text('Click Me'),

        ),
      ),
    );
  }
}