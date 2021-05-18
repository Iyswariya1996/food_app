import 'package:flutter/material.dart';
class VerticalListItem3 extends StatelessWidget {
  final int index;
  VerticalListItem3(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,image: new AssetImage("assets/BBQ.jpg")
                  ),
                ),

              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children: [
                        Text(
                          "Barbeque Nation", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold ),
                        ),

                        SizedBox(width: 76,),
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Text('fast food and drink'),
                    SizedBox(height: 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.redAccent,
                          size: 20.0,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "4.7",
                          style: TextStyle(
                              fontSize: 15.0,fontWeight: FontWeight.bold),
                        ),
                        Text(' (2.116 Reviews)'),
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lock_clock,
                              color: Colors.redAccent,
                              size: 20.0,
                            ),
                            Text("20 Mins",
                              style: TextStyle(
                                fontSize: 15.0, ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.redAccent,
                              size: 20.0,
                            ),
                            Text(
                              "Adyar",
                              style: TextStyle(
                                fontSize: 15.0, ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.time_to_leave,
                              color: Colors.redAccent,
                              size: 20.0,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "0.5 Km",
                              style: TextStyle(
                                fontSize: 15.0, ),
                            ),

                          ],
                        ),
                      ],
                    ),

                  ],

                ),


              ),

            ],
          ),

        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}