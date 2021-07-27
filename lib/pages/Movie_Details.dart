import 'package:flutter/material.dart';
import 'package:untitled1/db/temp_db.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MovieDetails extends StatefulWidget {
  final Movie movie;

  MovieDetails(this.movie);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
var newRating = 3.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            forceElevated: true,
            expandedHeight: 300,
            backgroundColor: Colors.amber.shade600,
            flexibleSpace: FlexibleSpaceBar(

              title: Text(widget.movie.name),
              background: Hero(
                tag: widget.movie.id,
                child: Image.asset(
                  widget.movie.image,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),

              ),
            ),
          ),

          SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  title: Text(widget.movie.name),
                  subtitle: Text(widget.movie.category),
                  trailing: Text(widget.movie.rating.toString()),
                ),

                   Row(
                    children: [
                       RatingBar.builder(

                          itemSize: 40,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              print(rating);
                              newRating = rating;
                            });

                          },
                        ),

                     Padding(
                       padding: const EdgeInsets.only(left: 61),
                       child: Text('Your Rating : $newRating',style: TextStyle(
                         backgroundColor: Colors.amber.shade600,

                       ),),
                     ),
                    ],
                  ),


                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(description),

                )
              ]))
        ],
      ),
    );
  }
}
