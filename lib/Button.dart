import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Button());
}
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSize(),);
  }
}

class HomeSize extends StatelessWidget{
  const HomeSize({super.key});

  MyScanBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white70,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )

    );
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("hello",selectionColor: Colors.cyan,),

      ),
      backgroundColor: Colors.blueGrey,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){ MyScanBar("TextButton",context);}, child: Text("TextButton",style: TextStyle(fontSize: 20,color: Colors.white),)),
          ElevatedButton(onPressed: (){ MyScanBar("ElevatedButton",context);}, child: Text("ElevatedButton"),style: buttonStyle,),
          OutlinedButton(onPressed: (){ MyScanBar("OutlinedButton",context);}, child: Text("OutlineButton",style: TextStyle(fontSize: 20,color: Colors.white),))
        ],
      )
    );
  }
}
