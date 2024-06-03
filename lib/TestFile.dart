import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const TestApp());
}
class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestFile(),);
  }
}
class TestFile extends StatelessWidget{
   TestFile({super.key});


  var MyItems=[
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Sumon"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Rifat"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Sifat"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Sohan"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Maruf"},
    {'img':"https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",'title':"Riyad"}
  ];

  MySnacBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TestApp",style: TextStyle(fontSize: 30,color: Colors.white),),
        backgroundColor: Colors.cyan,
        bottomOpacity: 2,
        titleSpacing: 60,
        titleTextStyle: TextStyle(color: Colors.greenAccent),
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        //centerTitle: true,
        //toolbarTextStyle: TextStyle(),
        actions: [
          IconButton(onPressed: (){MySnacBar("Show message", context);}, icon: Icon(Icons.add_call,size: 30,color: Colors.white,),),
          IconButton(onPressed: (){MySnacBar("Show message", context);}, icon: Icon(Icons.search,size: 30,color: Colors.white,),),
          IconButton(onPressed: (){MySnacBar("Show message", context);}, icon: Icon(Icons.settings,size: 30,color: Colors.white,),)
        ],
        //foregroundColor: Colors.yellow,
        //flexibleSpace: ,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        elevation: 10,
        child: Icon(Icons.add,size: 30,color: Colors.white,),
        onPressed: (){MySnacBar("Show add icon", context);},
      ),
      //backgroundColor: Colors.cyan,
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(fontSize: 15,color: Colors.white),
        backgroundColor: Colors.green,
        currentIndex: 0,
        elevation: 10,
        fixedColor: Colors.cyan,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo,size: 30,color: Colors.white,), label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.mail,size: 30,color: Colors.white,), label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.phone,size: 30,color: Colors.white,), label: "phone")
        ],
        onTap: (int index){
          if (index==0){
            MySnacBar("Show photo icon", context);
          }
          if (index==1){
            MySnacBar("Show mail icon", context);
          }
          if (index==2){
            MySnacBar("Show phone icon", context);
          }
        },
      ),
      drawer: Drawer(
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.yellow,
              accountName: Text("Sumon Islam",style: TextStyle(fontSize: 20,color: Colors.white),),
              accountEmail: Text("sumonislam@gmail.com",style: TextStyle(fontSize: 20,color: Colors.white),),
              currentAccountPicture: new CircleAvatar(
                //backgroundColor: Colors.yellow,
                backgroundImage: NetworkImage("https://media.istockphoto.com/id/1431021822/photo/happy-hiker-with-raised-arms-on-top-of-the-mountain.jpg?s=612x612&amp;w=is&amp;k=20&amp;c=gStSJQBRS7QVlEFZ5mo0DgdTHUiGy6Df5eSLe--1x_4="),
              ),
            ),
            ListTile(
              tileColor: Colors.cyan,
              hoverColor: Colors.lightGreen,
              leading: Icon(Icons.cable,size: 30,color: Colors.white,),
              title: Text("cable"),
              onTap: (){
                MySnacBar("show cable", context);
              },
            )
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.4,
          crossAxisSpacing: 4,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              MySnacBar(context, MyItems[index]['title']);
            },
            child: Container(
              padding: EdgeInsets.all(2.5),
              margin: EdgeInsets.all(4),
              width: 100,
              height: 100,
              child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}
