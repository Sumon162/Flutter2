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


  MyAlertDailog(context){
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  /*MyAlertDailog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(backgroundColor: Colors.cyan,
                title: Text("Alart!"),
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(onPressed: (){
                    MyScanBar("Delete success", context);
                    Navigator.of(context).pop();
                    }, child: Text("yes",style:TextStyle(fontSize: 20,color: Colors.white))),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No",style:TextStyle(fontSize: 20,color: Colors.white)),)
                ],
              )
          );
        }
    );
  }*/

  @override
  Widget build(BuildContext context) {

   /* final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
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

    );*/
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("hello",selectionColor: Colors.cyan,),

      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ElevatedButton(onPressed: (){MyAlertDailog(context);}, child: Text("Click me",style: TextStyle(fontSize: 20,color: Colors.cyan),)),
      )
      /*Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){ MyScanBar("TextButton",context);}, child: Text("TextButton",style: TextStyle(fontSize: 20,color: Colors.white),)),
          ElevatedButton(onPressed: (){ MyScanBar("ElevatedButton",context);}, child: Text("ElevatedButton"),style: buttonStyle,),
          OutlinedButton(onPressed: (){ MyScanBar("OutlinedButton",context);}, child: Text("OutlineButton",style: TextStyle(fontSize: 20,color: Colors.white),))
        ],
      )*/
    );
  }
}
