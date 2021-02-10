import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/component/recieve_card.dart';
import 'package:myFirstApp/models/recieve_model.dart';
import 'package:myFirstApp/size_config.dart';
// This is the best practice

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<RecieveModel>recievedData =[
            RecieveModel(
                image: "assets/images/delivery-truck.png",
                name: "مخزن1",
                date: "10/02/2021",
                notes: 'ملاحظات عن المخزن تكتب هنا',
                content: 'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                id: 1),
            RecieveModel(
                image: "assets/images/delivery-truck.png",
                name: "مخزن2",
                date: "10/02/2021",
                notes: 'ملاحظات عن المخزن تكتب هنا',
                content: 'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                id: 2),
            RecieveModel(
                image: "assets/images/delivery-truck.png",
                name: "مخزن3",
                content: 'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                date: "10/02/2021",
                notes: 'ملاحظات عن المخزن تكتب هنا',
                id: 3),
            RecieveModel(
                image: "assets/images/delivery-truck.png",
                name: "مخزن4",
                content: 'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                date: "10/02/2021",
                notes: 'ملاحظات عن المخزن تكتب هنا',
                id: 4),
          ]; 
  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      Header(title:'استلام بضاعة من المخزن', rightIconName: Icons.arrow_forward_sharp),
        Container(
        height: getProportionateScreenHeight(700),
        child: ListView.builder(
            itemBuilder: (context, index) => RecieveCard(recievedData[index]),
            itemCount: recievedData.length),
      )
     
    ]));
  }
}
