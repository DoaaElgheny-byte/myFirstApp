import 'package:flutter/material.dart';
import 'package:myFirstApp/component/customer_card.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/models/customer_model.dart';
import 'package:myFirstApp/size_config.dart';

class Body extends StatelessWidget {
  final List<CustomerModel> customerData = [
    CustomerModel(
        id: 0,
        customername: 'Customer Name1',
        image: 'assets/images/delivery-truck.png',
        visitNo: '20',
        zone: "المنصوره",
        totalPrice: 20.2,
        activity: "سوبر ماركت"),
    CustomerModel(
        id: 0,
        customername: 'Customer Name1',
        image: 'assets/images/delivery-truck.png',
        visitNo: '20',
        zone: "المنصوره",
        totalPrice: 20.2,
        activity: "سوبر ماركت"),
    CustomerModel(
        id: 0,
        customername: 'Customer Name1',
        image: 'assets/images/delivery-truck.png',
        visitNo: '20',
        zone: "المنصوره",
        totalPrice: 20.2,
        activity: "سوبر ماركت"),
    CustomerModel(
        id: 0,
        customername: 'Customer Name1',
        image: 'assets/images/delivery-truck.png',
        visitNo: '20',
        zone: "المنصوره",
        totalPrice: 20.2,
        activity: "سوبر ماركت"),
    CustomerModel(
        id: 0,
        customername: 'Customer Name1',
        image: 'assets/images/delivery-truck.png',
        visitNo: '20',
        zone: "المنصوره",
        totalPrice: 20.2,
        activity: "سوبر ماركت")
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController editingController = TextEditingController();
    return SingleChildScrollView(
        child: Column(children: [
      Header(
        title: 'عملائي',
        rightIconName: Icons.arrow_forward_sharp,
      ),
      Container(
        padding: EdgeInsets.only(
            top: getProportionateScreenHeight(15),
            left: getProportionateScreenWidth(15),
            right: getProportionateScreenWidth(15)),
        height: getProportionateScreenHeight(80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: getProportionateScreenWidth(40),
                height: getProportionateScreenHeight(45),
                // margin: EdgeInsets.only(right: 30, left: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffFF27AE60),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Center(
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(290),
              height: getProportionateScreenHeight(45),
              // padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                controller: editingController,
                autocorrect: false,
                keyboardType: TextInputType.name,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  // labelText: "Search",
                  hintText: "بحث",
                  // hintStyle: TextStyle(height: 50),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(3),
                  // fillColor: Colors.grey[300],
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: getProportionateScreenHeight(700),
        child: ListView.builder(
            itemBuilder: (context, index) => CustomerCard(customerData[index]),
            itemCount: customerData.length),
      )
    ]));
  }
}
