import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/size_config.dart';

class NewCustomerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController arabicNameController = TextEditingController();
    TextEditingController englishNameController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    return SingleChildScrollView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Header(
            title: 'انشاء عميل جديد',
            rightIconName: Icons.arrow_forward_sharp,
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          Align(
            alignment: Alignment(0.8, 0.8),
            child: Text(
              "الاسم بالعربية",
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(320),
            height: getProportionateScreenHeight(55),
            // padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
              onChanged: (value) {
                print(value);
              },
              controller: arabicNameController,
              autocorrect: false,
              keyboardType: TextInputType.name,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                // labelText: "Search",
                hintText: "الاسم بالعربية",
                hintStyle: TextStyle(color: Colors.black26),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,

                contentPadding: EdgeInsets.all(3),
                // fillColor: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          Align(
            alignment: Alignment(0.8, 0.8),
            child: Text(
              "الاسم بالانجليزية",
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(320),
            height: getProportionateScreenHeight(55),
            // padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
              onChanged: (value) {
                print(value);
              },
              controller: englishNameController,
              autocorrect: false,
              keyboardType: TextInputType.name,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                // labelText: "Search",
                hintText: "الاسم بالانجليزية",
                hintStyle: TextStyle(color: Colors.black26),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                // prefixIcon: Icon(
                //   Icons.search,
                //   color: Colors.grey,
                // ),
                contentPadding: EdgeInsets.all(3),
                // fillColor: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          Align(
            alignment: Alignment(0.8, 0.8),
            child: Text(
              " العنوان",
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(320),
            height: getProportionateScreenHeight(55),
            padding: const EdgeInsets.only(top: 8.0, right: 5, bottom: 2),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey[100],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
              onChanged: (value) {
                print(value);
              },
              controller: addressController,
              autocorrect: false,
              keyboardType: TextInputType.name,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                // labelText: "Search",
                hintText: "العنوان",
                hintStyle: TextStyle(
                  color: Colors.black26,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Icon(
                  Icons.location_on_sharp,
                  color: kPrimaryColor,
                ),
                contentPadding: EdgeInsets.all(3),
                // fillColor: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(25),
                vertical: getProportionateScreenHeight(15)),
            child: DefaultButton(
              hasIcon: false,
              iconName: null,
              text: "انشاء",
              press: () {
                // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
          ),
        ]));
  }
}
