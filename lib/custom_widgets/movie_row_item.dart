import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/db/temp_db.dart';
import 'package:untitled1/pages/Movie_Details.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  final int index;

  MovieItem(this.movie, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Stack(
            //fit: StackFit.loose,

            children: [
              Container(
                height: 420,
                width: 335,
                alignment: Alignment.center,
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(movie.image),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ), //Offset
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                    //BoxShadow
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(movie.rating.toString()),

                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: IconButton(
                            icon: const Icon(Icons.favorite),
                            color: Colors.white,
                            iconSize: 50.0,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),

                      child: Center(
                        child: Text(
                          movie.name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.0,
                            backgroundColor: Colors.transparent,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150),

                        child: Row(
                          children: [


                              ElevatedButton(
                                  onPressed: (){},
                                  child: Text(movie.category),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,

                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),

                              ),
                            ElevatedButton(
                              onPressed: (){},
                              child: Text(movie.releaseYear.toString()),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,

                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),

                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>MovieDetails(movie)
                                  ));
                                },
                                child: Text('Details'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.amber.shade500,

                                    textStyle: TextStyle(

                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),

                              ),
                            ),



                          ],
                        ),
                      ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Card(
//     elevation: 7,
//     child: ListTile(
//       tileColor: index.isEven ? Colors.green : Colors.red,
//
//
//       onTap: (){
//         Navigator.push(context, MaterialPageRoute(
//           builder: (context)=>MovieDetails(movie)
//         ));
//       },
// //
//       title: Text(movie.name),
//       subtitle: Text(movie.category),
//       trailing: Text(movie.rating.toString()),
//
//       leading: Hero(
//         tag: movie.id,
//           child: Image.asset(movie.image,width: 100,fit: BoxFit.cover,)),
//
//
//     ),
//   ),
// ),
