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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
    );
  }
}