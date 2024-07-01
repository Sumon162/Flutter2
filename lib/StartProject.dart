import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TestApp());
}
class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestingApp(),);
  }
}
class TestingApp extends StatelessWidget{
  //const TestingApp({super.key})
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("My App"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home,size: 20,color: Colors.white,),text: 'home',),
              Tab(icon: Icon(Icons.search),text: 'search',),
              Tab(icon: Icon(Icons.settings),text: 'settings',),
              Tab(icon: Icon(Icons.email),text: 'email',),
              Tab(icon: Icon(Icons.contact_mail),text: 'contact',),
              Tab(icon: Icon(Icons.person),text: 'person',),
              Tab(icon: Icon(Icons.access_alarm),text: 'alarm',),
              Tab(icon: Icon(Icons.account_balance),text: 'account_balance',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
             
          ],
        )
      )
  );
  }
}
