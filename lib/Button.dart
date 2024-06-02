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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("hello",selectionColor: Colors.cyan,),

      ),
      backgroundColor: Colors.black38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: (){}, child: Text("TextButton",style: TextStyle(fontSize: 40,color: Colors.white),)),
          ElevatedButton(onPressed: (){}, child: Text("ElevatedButton",style: TextStyle(fontSize: 40,color: Colors.white),)),
          OutlinedButton(onPressed: (){}, child: Text("OutlineButton",style: TextStyle(fontSize: 40,color: Colors.white),))
        ],
      )
    );
  }
}
