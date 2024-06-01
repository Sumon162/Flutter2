import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void mian(){
  runApp(const FlutteraApp());
}
class FlutteraApp extends StatelessWidget{
  const FlutteraApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: HomeActivity(),);
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MyScanBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.green,
        //centerTitle: true,
        //titleTextStyle: TextStyle(color: Colors.black),
        //title: Text("hello"),
        actions: [
          IconButton(onPressed: (){MyScanBar("show message Icon",context);},icon: Icon(Icons.message),),
          IconButton(onPressed: (){MyScanBar("show search Icon",context);},icon: Icon(Icons.search),),
          IconButton(onPressed: (){MyScanBar("show setting Icon",context);},icon: Icon(Icons.settings),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          MyScanBar("show add Icon",context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo),label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.mail),label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.phone),label: "phone")
        ],
        onTap: (int Index){
          if(Index==0){
            MyScanBar("show photo",context);
          }
          if(Index==1){
            MyScanBar("show mail",context);
          }
          if(Index==2){
            MyScanBar("show phone",context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [UserAccountsDrawerHeader(
            accountName: Text("Sumon Islam"),
            accountEmail: Text("sumon@gmail.com"),
            arrowColor: Colors.cyan,
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage("url"),
              backgroundColor: Colors.green,
            ),
          )
          ],
        ),
      ),
        backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.all(300),
        margin: EdgeInsets.all(300),
        child: Text("FirstApp"),
      ),
    );
  }
}