import 'package:flutter/material.dart';

class VisitModel {
  final String companyname;
  final String image;
  final int id;
  final bool isVisit = true;

  VisitModel(
      {@required this.companyname, @required this.image, @required this.id});
}
