import 'package:flutter/material.dart';

class CustomerModel {
  final String customername;
  final String image;
  final double totalPrice;
  final String zone;
  final String activity;
  final String visitNo;

  final int id;

  CustomerModel(
      {@required this.customername,
      @required this.image,
      @required this.id,
      @required this.totalPrice,
      @required this.visitNo,
      @required this.activity,
      @required this.zone});
}
