import 'package:flutter/material.dart';

class RecieveModel {
  final int id;
  final String name;
  final String image;
  final String date;
  final String notes;
  final String content;

  RecieveModel({
    @required this.name,
    @required this.image,
    @required this.id,
    @required this.date,
    this.content ='',
    this.notes=''
  });
}
