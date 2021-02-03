import 'package:flutter/material.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/size_config.dart';

class VistCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isGrid;
  final int flag;
  VistCard({this.image, this.title, this.flag, this.isGrid = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3),
        child: isGrid
            ? InkWell(
                onTap: () {
                  // onCardPress();
                },
                child: Material(
                    elevation: 6,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          image,
                          height: getProportionateScreenWidth(70),
                          width: getProportionateScreenWidth(70),
                        ),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
              )
            : InkWell(
                onTap: () {
                  // onCardPress();
                },
                child: Material(
                    elevation: 6,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(
                            image,
                            height: getProportionateScreenWidth(70),
                            width: getProportionateScreenWidth(70),
                          ),
                        ],
                      ),
                    )),
              ));
  }
}