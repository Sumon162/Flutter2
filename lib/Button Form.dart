import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ButtonForm());
}
class ButtonForm extends StatelessWidget {
  const ButtonForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeForm(),);
  }
}

class HomeForm extends StatelessWidget{
  const HomeForm({super.key});

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
                    Navigator.of(context).pop();
                  }, child: Text("yes",style:TextStyle(fontSize: 20,color: Colors.white))),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No",style:TextStyle(fontSize: 20,color: Colors.white)),)
                ],
              )
          );
        }
    );*/


  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      //padding: EdgeInsets.all(20),
      minimumSize: Size(double.infinity, 60),
          backgroundColor: Colors.tealAccent,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("hello"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name",suffixIconColor: Colors.cyan),style: TextStyle(fontSize: 20,color: Colors.red),),),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),style: TextStyle(fontSize: 20,color: Colors.cyan),),),
          Padding(padding: EdgeInsets.all(20),child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Mail Address"),style: TextStyle(fontSize: 20,color: Colors.cyan),),),
          Padding(padding: EdgeInsets.all(40),child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle,),)
        ],
      ),
    );
  }
}
