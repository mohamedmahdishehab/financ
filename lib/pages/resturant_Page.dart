// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../util/resturant_Cafea_UtilPage.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({Key? key}) : super(key: key);

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Sending Money',
      //   onPressed: () {},
      //   backgroundColor: Colors.pink,
      //   child: Icon(Icons.monetization_on),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                  child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: Image.asset(
                          'lib/icons/previous.png',
                        )),
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      'Rsturant & Cafea',
                      style: TextStyle(fontSize: 26),
                    )
                  ],
                ),
              )),
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
              RestUtil(
                  ImagePath:
                      'lib/icons/kayleigh-harrington-yhn4okt6ci0-unsplash.jpg',
                  ResName: 'Lebanon Cafea',
                  ResOffer: 'Offer 10%'),
              SizedBox(
                height: 10,
              ),
              RestUtil(
                  ImagePath: 'lib/icons/siamak-YduJNHSnJUU-unsplash.jpg',
                  ResName: 'Hans Rest&Cafea',
                  ResOffer: 'Offer 8%'),
              SizedBox(
                height: 10,
              ),
              RestUtil(
                  ImagePath: 'lib/icons/spencer-davis-xyilWXHQMLo-unsplash.jpg',
                  ResName: 'Spencer Cafea',
                  ResOffer: 'Offer 6%'),
              SizedBox(
                height: 10,
              ),
              RestUtil(
                  ImagePath:
                      'lib/icons/elizabeth-french-6Z9BQKksmbE-unsplash.jpg',
                  ResName: 'Elizabeth Rest&Cafea',
                  ResOffer: 'Offer 5%'),
              SizedBox(
                height: 10,
              ),
              RestUtil(
                  ImagePath: 'lib/icons/dan-farrell-hHotHaiL3uE-unsplash.jpg',
                  ResName: 'Dan Cafea',
                  ResOffer: 'Offer Take 1 Get 1 Free')
            ],
          ),
        ),
      ),
    );
  }
}
