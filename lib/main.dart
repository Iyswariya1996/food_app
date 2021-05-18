import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data_json.dart';
import 'package:food_app/vertical_list_item.dart';
import 'package:food_app/vertical_list_item2.dart';
import 'package:food_app/vertical_list_item3.dart';
import 'package:food_app/vertical_list_item4.dart';




void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int activeTab = 0;
  int activemenu=0;

  int _index = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App',style: TextStyle(color: Colors.deepOrange,fontSize: 34,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body:SingleChildScrollView(
          child: Container(
          child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,image: new AssetImage("assets/eazy.jpg")
                    ),
                ),
                ),
                SizedBox(height: 10,),
                Row(children:List.generate(4, (index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        activeTab=index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5,left: 12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: activeTab==index ? Colors.redAccent
                                : Colors.white.withOpacity(0.2),


                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child:Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text(food_categories[index],
                              style: TextStyle(
                                  color: activeTab == index?
                                  Colors.white : Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );

                }),
                ),
                SizedBox(height: 10,),
                Container(

                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search,color: Colors.grey.shade300,),
                      hintText: "Search",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                        ),
                    ),
                  ),
                ),
                ),
                SizedBox(height: 10,),

                Row(children:List.generate(3, (index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        activemenu=index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right:20,left: 20),
                      child: Container(
                        decoration:  BoxDecoration(
                            color: activemenu==index ? Colors.redAccent
                                : Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child:Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text(food[index],

                              style: TextStyle(
                                  color: activemenu == index?
                                  Colors.white : Colors.black

                              ),

                            ),


                          ),
                        ),
                      ),
                    ),
                  );

                }),
                ),
                SizedBox(height: 10,),


                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (ctx, i) => VerticalListItem(i),
                  ),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) => VerticalListItem2(i),
                  ),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) => VerticalListItem3(i),
                  ),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, i) => VerticalListItem4(i),
                  ),
                ),


              ],

            ),
          ),

        ),
        bottomNavigationBar: new BottomNavigationBar(

            currentIndex: _index,
          onTap: (int index) => setState(() => _index = index),
          elevation: 0.0,

          items: [

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.redAccent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
                label: ""),

          ],



        ),

      ),
    );
  }
}