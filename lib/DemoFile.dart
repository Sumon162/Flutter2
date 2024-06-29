import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TestFile());
}
class TestFile extends StatelessWidget {
  const TestFile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnacbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        elevation: 10,
        //centerTitle: true,
        title: Text("Android App",style: TextStyle(fontSize: 40, color: Colors.white),),
        actions: [
          IconButton(onPressed: (){MySnacbar("ShowSearchBar",context);},
              icon: Icon(Icons.search,size: 30,color: Colors.white,)),
          IconButton(onPressed: (){MySnacbar("ShowSearchBar",context);},
              icon: Icon(Icons.settings,size: 30,color: Colors.white,)),
          IconButton(onPressed: (){MySnacbar("ShowSearchBar",context);},
              icon: Icon(Icons.message,size: 30,color: Colors.white,)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        child: Icon(Icons.add,size: 20,color: Colors.white,),
        onPressed: (){MySnacbar("ShowAddIcon",context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo,size: 30,color: Colors.white,), label: "photo"),
          BottomNavigationBarItem(icon: Icon(Icons.mail,size: 30,color: Colors.white,), label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.phone,size: 30,color: Colors.white,), label: "phone")
        ],
        onTap: (int index){
          if (index==0){
            MySnacbar("Show Photo",context);
          }
          if (index==1){
            MySnacbar("Show mail",context);
          }
          if (index==2){
            MySnacbar("Show Phone",context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            UserAccountsDrawerHeader(
              /*decoration: BoxDecoration(
              ),*/
              arrowColor: Colors.cyan,
              accountName: Text("Sumon Islam",style: TextStyle(fontSize: 25,color: Colors.white),),
              accountEmail: Text("sumon@gmail.com",style: TextStyle(fontSize: 25,color: Colors.white),),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage("https://img.freepik.com/free-photo/beautiful-shot-tree-savanna-plains-with-blue-sky_181624-22049.jpg?w=826&t=st=1719116440~exp=1719117040~hmac=0838b234183d4b6b6bcce2d55baeb167ab2cdc177e35ef73b09101adc48c5487"),
                backgroundColor: Colors.grey,
              ),
            ),
            ListTile(
              tileColor: Colors.cyan,
              hoverColor: Colors.lightGreen,
              leading: Icon(Icons.add_alert,size: 25,color: Colors.white,),
              title: Text("add-alert",style: TextStyle(fontSize: 25,color: Colors.white),),
              onTap: (){
                MySnacbar("show add_alert",context);
              },
            ),
            ListTile(
              tileColor: Colors.cyan,
              hoverColor: Colors.lightGreen,
              leading: Icon(Icons.add_chart,size: 25,color: Colors.white,),
              title: Text("add-chart",style: TextStyle(fontSize: 25,color: Colors.white),),
              onTap: (){
                MySnacbar("show add_chart",context);
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SpaceBar",style: TextStyle(fontSize: 25,color:Colors.white),),
              background: Image.network("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),
              // backgroundColor: Colors.greenAccent,
              ),
            ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return ListTile(
                  title: Text("Demo Item",style: TextStyle(fontSize: 25,color: Colors.white),),
                );
              },
            childCount: 2,
          ),
          )
        ],
      ),
    );
  }
}
