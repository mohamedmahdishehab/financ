// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:financeapp/pages/paypal_Page.dart';
import 'package:financeapp/pages/resturant_Page.dart';
import 'package:financeapp/pages/western_Union_Page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../util/my_partbutton.dart';
import 'american_Express_Page.dart';
import 'money_Gram_Page.dart';

class PartenerPage extends StatefulWidget {
  const PartenerPage({Key? key}) : super(key: key);

  @override
  State<PartenerPage> createState() => _PartenerPageState();
}

class _PartenerPageState extends State<PartenerPage> {
  final _controller = PageController();
  final List<String> imgList = [
    'lib/icons/rupixen-com-Q59HmzK38eQ-unsplash.jpg',
    'lib/icons/austin-distel-EMPZ7yRZoGw-unsplash.jpg',
    'lib/icons/tech-daily-pz_L0YpSVvE-unsplash.jpg',
    'lib/icons/thomas-lefebvre-gp8BLyaTaA0-unsplash.jpg',
    'lib/icons/john-schnobrich-2FPjlAyMQTA-unsplash.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Our Parteners',
      //   onPressed: () {},
      //   backgroundColor: Colors.pink,
      //   child: Icon(Icons.monetization_on),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: Image.asset(
                          'lib/icons/previous.png',
                        )),
                  ),
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
                    'Our Parteners ',
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[600],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Services ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  primary: true,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      partButton(
                          PageNameRoute: ResturantPage(),
                          iconsImagePath: 'lib/icons/restaurant.png',
                          ButtonText: 'Resursant&Cafea'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: 'PageNameRoute',
                          iconsImagePath: 'lib/icons/laptop.png',
                          ButtonText: 'Online Booking'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: 'PageNameRoute',
                          iconsImagePath: 'lib/icons/company.png',
                          ButtonText: 'Companies'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: 'PageNameRoute',
                          iconsImagePath: 'lib/icons/hall.png',
                          ButtonText: 'Wedding Hall')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[600],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Finance  ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  primary: true,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      partButton(
                          PageNameRoute: WesternPage(),
                          iconsImagePath: 'lib/icons/symbols.png',
                          ButtonText: 'Wester Union'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: MoneyGramPage(),
                          iconsImagePath: 'lib/icons/moneygram.png',
                          ButtonText: 'Money Gram'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: PayPalPage(),
                          iconsImagePath: 'lib/icons/paypal (1).png',
                          ButtonText: 'PayPal'),
                      SizedBox(
                        width: 15,
                      ),
                      partButton(
                          PageNameRoute: AmericanExpressPage(),
                          iconsImagePath: 'lib/icons/american-express.png',
                          ButtonText: 'American Express'),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[600],
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: imgList
                      .map((item) => Container(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              image: AssetImage(item),
                              height: 100,
                            ),
                          )))
                      .toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
