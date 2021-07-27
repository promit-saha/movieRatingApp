import 'package:flutter/cupertino.dart';

final  movies = [
  Movie(id: 1, name: 'Avengers', category: 'Action/Sci-Fi', releaseYear: 2012, rating: 8.2, image: 'images/avengers.jpg',),
  Movie(id: 2, name: 'Captain America', category: 'Action/Sci-Fi', releaseYear: 2011, rating: 8.3, image: 'images/captainamerica.jpg'),
  Movie(id: 3, name: 'Captain Marvel', category: 'Action/Sci-Fi', releaseYear: 2018, rating: 8.7, image: 'images/captainmarvel.jpg'),
  Movie(id: 4, name: 'Dr Strange', category: 'Action/Sci-Fi', releaseYear: 2017, rating: 7.5, image: 'images/drstrange.jpg'),
  Movie(id: 5, name: 'Iron Man', category: 'Action/Sci-Fi', releaseYear: 2008, rating: 8.4, image: 'images/ironman.jpg'),
  Movie(id: 6, name: 'Spider Man : Homecoming', category: 'Action/Sci-Fi', releaseYear: 2016, rating: 8.1, image: 'images/spiderman.jpeg'),
  Movie(id: 7, name: 'Thor', category: 'Action/Sci-Fi', releaseYear: 2009, rating: 8.0, image: 'images/thor.jpg'),
];

const description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id ornare quam. In hac habitasse platea dictumst. Nulla ut dui augue. Proin nec purus tincidunt, scelerisque metus hendrerit, interdum urna. Morbi consectetur venenatis vehicula. Vivamus vitae tellus turpis. Cras in felis molestie, vestibulum neque quis, egestas massa. Mauris nec purus ut enim laoreet facilisis sed vel ante. Sed volutpat, mi vulputate luctus commodo, nulla quam porta ipsum, ac dignissim felis lorem ut metus. Suspendisse rutrum mattis venenatis. Phasellus placerat ornare justo, eu congue ante ornare ac. Proin ut risus turpis. Donec lectus arcu, luctus vitae lorem a, ultrices sodales nisi. Pellentesque finibus in lacus vitae laoreet. Ut rhoncus lobortis libero, ac varius orci eleifend et. Fusce a odio nibh.

Donec laoreet scelerisque odio. Donec vulputate tellus sed volutpat suscipit. Pellentesque eget enim tempus, iaculis leo nec, laoreet leo. Donec sagittis est sed est tincidunt gravida. Sed id egestas est. Suspendisse sed odio quis felis tempor sollicitudin. Donec accumsan finibus diam a ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;

Phasellus efficitur sit amet lectus eu rhoncus. Cras suscipit ut quam ac aliquet. Donec ac vestibulum lorem, vitae porttitor sem. Phasellus sed accumsan ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et augue tristique, mattis nisl nec, auctor augue. Vivamus volutpat neque ac justo pellentesque, at sodales libero pretium.

Nam condimentum feugiat mauris ac porttitor. Duis iaculis bibendum massa et cursus. Nulla ultricies facilisis sem interdum tempor. Donec at arcu eget magna aliquam facilisis. Praesent eu quam porta, semper lacus non, sagittis elit. Aenean turpis mauris, tincidunt eu vulputate et, maximus eget metus. Nulla et ipsum id est euismod aliquam eu eget mi. In hac habitasse platea dictumst.

Integer ac lorem odio. Quisque quis dolor non eros feugiat posuere sed eu neque. Maecenas quis dictum tortor. Etiam elementum aliquet viverra. Aliquam erat volutpat. Sed hendrerit eget velit vel luctus. Proin urna augue, aliquet sit amet nunc quis, luctus euismod lorem. Ut sodales imperdiet purus, et egestas quam venenatis non. Nulla vulputate cursus nisl, hendrerit semper odio tincidunt eu. Sed finibus feugiat nisl at rutrum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean nec placerat ligula. Sed cursus quam et maximus cursus.''';
class Movie{
  int id;
  String name;
  String category;
  int releaseYear;
  double rating;
  String image;

  Movie(
      {
       required this.id,
        required this.name,
        required  this.category,
        required this.releaseYear,
        required this.rating,
        required this.image
      });
}