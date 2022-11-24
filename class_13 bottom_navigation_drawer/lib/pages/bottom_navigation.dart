import 'package:class_13_bottom_navigation_drawer/pages/page1.dart';
import 'package:class_13_bottom_navigation_drawer/pages/page2.dart';
import 'package:class_13_bottom_navigation_drawer/pages/page3.dart';
import 'package:class_13_bottom_navigation_drawer/pages/page4.dart';
import 'package:flutter/material.dart';

import '../utls/snackbar_messege.dart';
import '../utls/drawer.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late Size query;


  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];



  @override
  Widget build(BuildContext context) {

    query = MediaQuery.of(context).size;
    return Scaffold(
      drawer: MyDrawer(context),
      appBar: AppBar(title: Text('Bottom Navigation'),),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: ListView(
                 shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(

                      child: Text('Button 1'),
                      onPressed: (){
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(

                      child: Text('Button 2'),
                      onPressed: (){
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(

                      child: Text('Button 3'),
                      onPressed: (){
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(

                      child: Text('Button 4'),
                      onPressed: (){
                        setState(() {
                          pageIndex = 3;
                        });
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(

              decoration: BoxDecoration(

              ),
              child:  pages[pageIndex],

            ),
          ),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        //type: BottomNavigationBarType.fixed ,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label:'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
        ],

        onTap: (int index){
          if(index ==0){
            MySnackBar('Home Button is clicked',context);

          }
          if(index ==1){
            MySnackBar('Contact Button is clicked',context);

          }
          else{
            MySnackBar('Profile Button is clicked',context);
          }

        },




      ),

    );
  }


}












