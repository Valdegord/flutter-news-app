import 'package:flutter/material.dart';

class Movie {
  final String? title;
  final String? category;
  final String? description;
  final String? rating;
  final int? id;
  final String? date;
  final String? duration;

  Movie(
      {@required this.title,
      @required this.category,
      @required this.description,
      @required this.rating,
      @required this.id,
      @required this.date,
      @required this.duration});
}
