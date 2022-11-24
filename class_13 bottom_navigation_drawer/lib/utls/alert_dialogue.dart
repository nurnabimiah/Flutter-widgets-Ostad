

import 'package:class_13_bottom_navigation_drawer/utls/snackbar_messege.dart';
import 'package:flutter/material.dart';

MyAlertDialogue(context){

  return showDialog(
      context: context,
      builder:(BuildContext context){
       return Expanded(
           child:AlertDialog(
             title: Text('Alert !'),
             content: Text('Do you want to delete'),
             actions: [
               TextButton(onPressed: (){
                 MySnackBar('Delete Success', context);
                 Navigator.pop(context);
               }, child: Text('Yes')),
               TextButton(onPressed: (){Navigator.pop(context);}, child: Text('No')),
             ],
           )
       );
      }
  );


}