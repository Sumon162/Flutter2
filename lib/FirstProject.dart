import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),);
  }
}

/*void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}*/


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
        //title: Text("hello"),
        actions: [
          IconButton(
            onPressed: () {
              MyScanBar("show message Icon", context);
            },
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {
              MyScanBar("show search Icon", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MyScanBar("show setting Icon", context);
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
        onPressed: () {
          MyScanBar("show add Icon", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 0,
        elevation: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "phone")
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
             leading: Icon(Icons.add_alarm,color: Colors.white,size: 100,),
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
        color: Colors.cyan,
        padding: EdgeInsets.all(300),
        margin: EdgeInsets.all(300),
        child: Text("FirstApp"),
      ),
    );
  }
}
