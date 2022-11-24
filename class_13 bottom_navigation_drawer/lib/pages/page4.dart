import 'package:flutter/material.dart';

import '../utls/alert_dialogue.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigoAccent,
      child: Center(
        child: ElevatedButton(
          onPressed: (){MyAlertDialogue(context);},
          child: Text('Click Me'),

        ),
      ),
    );
  }
}