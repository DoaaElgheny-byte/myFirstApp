import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:myFirstApp/component/custom_card.dart';
import 'package:myFirstApp/models/visit_model.dart';
import 'package:myFirstApp/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<VisitModel> visitData = [
    VisitModel(
        id: 0,
        companyname: 'شركة الحمد',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 1,
        companyname: 'شركة الجهيني',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 0,
        companyname: 'شركة الحمد',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 1,
        companyname: 'شركة الجهيني',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 0,
        companyname: 'شركة الحمد',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 1,
        companyname: 'شركة الجهيني',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 0,
        companyname: 'شركة الحمد',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 1,
        companyname: 'شركة الجهيني',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 0,
        companyname: 'شركة الحمد',
        image: 'assets/images/delivery-truck.png'),
    VisitModel(
        id: 1,
        companyname: 'شركة الجهيني',
        image: 'assets/images/delivery-truck.png'),
  ];
  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.values[100],
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0, bottom: 20),
            child: SizedBox(
              child: Container(
                color: Color(0xffFF27AE60),
                height: 100,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: DatePicker(
                    DateTime.now(),
                    width: getProportionateScreenWidth(55),
                    height: getProportionateScreenHeight(65),
                    controller: null,
                    initialSelectedDate: this._selectedValue,
                    selectionColor: Colors.black26,
                    selectedTextColor: Colors.white,
                    // inactiveDates: [
                    //   DateTime.now().add(Duration(days: 3)),
                    //   DateTime.now().add(Duration(days: 4)),
                    //   DateTime.now().add(Duration(days: 7))
                    // ],
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        this._selectedValue = date;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: getProportionateScreenHeight(580),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, right: 10, left: 10, bottom: 5),
                    child: Column(children: [
                      Align(
                        alignment: Alignment(0.9, 1),
                        child: FlatButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.green,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5)),
                          icon: Icon(
                            Icons.sort,
                            color: Colors.green,
                            size: 25,
                          ),
                          label: Text('قيد التنفيذ',
                              style: TextStyle(color: Colors.green)),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(450),
                        child: ListView.builder(
                            itemBuilder: (context, index) =>
                                CustomCard(visitData[index]),
                            itemCount: visitData.length),
                      )
                    ])),
              ),
            ),
          ),
        ]);
  }
}
