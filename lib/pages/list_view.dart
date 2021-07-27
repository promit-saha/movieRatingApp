import 'package:flutter/material.dart';
import 'package:untitled1/custom_widgets/movie_row_item.dart';
import 'package:untitled1/db/temp_db.dart';

class ListViewExample extends StatefulWidget {
  //const ListViewExample({Key? key}) : super(key: key);
//final Icon profileIcon = new Icon(Icons.account_circle);
  @override
  _ListViewExampleState createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('Movies',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
          ),
        ),

        actions: [

                  IconButton(
            padding: const EdgeInsets.only(right: 40.0),
            iconSize: 40,
            onPressed: (){},

            icon: Icon(Icons.account_circle,color: Colors.amber.shade500,size: 40,),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index)=>MovieItem(movies[index],index),

        ),
      )
    );
  }
}
