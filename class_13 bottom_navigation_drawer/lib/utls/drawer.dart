import 'package:flutter/material.dart';

Drawer MyDrawer(BuildContext context) {
  return Drawer(
    elevation: 10,
    child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              //color: Colors.grey.shade500
                color: Colors.teal
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage:NetworkImage('https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                  radius: 40.0,
                ),
                SizedBox(width:10,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Md.Nurnabi Miah',style: TextStyle( fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),),
                      SizedBox(height: 5,),
                      Text('md.nurnabimiah5@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 13),)
                    ],
                  ),
                ),


              ],
            )
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home Page', style: TextStyle(fontSize: 18),),
          onTap: (){},
        ),
        Divider(
          height: 3,
          thickness: 2,
          color: Colors.teal,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings', style: TextStyle(fontSize: 18),),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.feedback),
          title: Text('Rate Us', style: TextStyle(fontSize: 18),),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share', style: TextStyle(fontSize: 18),),
          onTap: (){},
        ),

        ListTile(
          leading: Icon(Icons.close),
          title: Text('Close Drawer', style: TextStyle(fontSize: 18),),
          onTap: (){
            Navigator.of(context).pop();
          },
        ),

      ],
    ),

  );
}