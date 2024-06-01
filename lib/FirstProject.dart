import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),);
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  MyScanBar(message, context) {
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
        title: Text("hello",style: TextStyle(fontSize: 30,color: Colors.white),),
        actions: [
          IconButton(onPressed: () {
              MyScanBar("show message Icon", context);
            },
            icon: Icon(Icons.message,size: 30,color: Colors.white,),
          ),
          IconButton(
            onPressed: () {
              MyScanBar("show search Icon", context);
            },
            icon: Icon(Icons.search,size: 30,color: Colors.white,),
          ),
          IconButton(
            onPressed: () {
              MyScanBar("show setting Icon", context);
            },
            icon: Icon(Icons.settings,size: 30,color: Colors.white,),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add,size: 30,color: Colors.white,),
        onPressed: () {
          MyScanBar("show add Icon", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 0,
        elevation: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo,size: 30,color: Colors.white,), label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.mail,size: 30,color: Colors.white,), label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.phone,size: 30,color: Colors.white,), label: "phone")
        ],
        onTap: (int Index) {
          if (Index == 0) {
            MyScanBar("show photo", context);
          }
          if (Index == 1) {
            MyScanBar("show mail", context);
          }
          if (Index == 2) {
            MyScanBar("show phone", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sumon Islam",style: TextStyle(fontSize: 20),),
              accountEmail: Text("sumon@gmail.com",style: TextStyle(fontSize: 20),),
              arrowColor: Colors.cyan,
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage("https://media.istockphoto.com/id/1496615469/photo/serene-latin-woman-enjoy-sunset-with-gratitude.jpg?s=2048x2048&w=is&k=20&c=f2BOEDlrq_Z90_MAqN0iFt7c6ilF2ci4bSSwaM-JpcU="),
                backgroundColor: Colors.green,
              ),
            ),
            ListTile(
              tileColor: Colors.cyan,
             leading: Icon(Icons.add_alarm,color: Colors.white,size: 20,),
             title: Text("alarm",style: TextStyle(fontSize: 30,color: Colors.white),),
              onTap: (){
                MyScanBar("Show alarm", context);
              },
            )
          ],
        ),

      ),
      //backgroundColor: Colors.green,
      body: Container(
        color: Colors.green,
        padding: EdgeInsets.all(100),
       margin: EdgeInsets.all(0),
        child: Text("FirstApp",style: TextStyle(fontSize: 40,color: Colors.white),),
      ),
    );
  }
}
