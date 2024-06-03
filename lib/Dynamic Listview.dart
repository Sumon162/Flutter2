import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const DynamicListView());
}
class DynamicListView extends StatelessWidget {
  const DynamicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewBuilder(),);
  }

  }

class ListViewBuilder extends StatelessWidget{
   ListViewBuilder({super.key});

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

  MyScanBar(context,msg){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Dynamic Listview"),

      ),
      body: /*GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.4,
        ),
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){MyScanBar(context, MyItems[index]['title']);},

              child: Container(
                //padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 250,
                child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
              ),
            );
          }
      ),*/



      ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
             onDoubleTap: (){MyScanBar(context, MyItems[index]['title']!);},
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        }
      ),



    );
  }
}
