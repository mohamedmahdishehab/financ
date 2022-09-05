// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RestUtil extends StatelessWidget {
  final ImagePath;
  final ResName;
  final ResOffer;

  const RestUtil(
      {Key? key,
      required this.ImagePath,
      required this.ResName,
      required this.ResOffer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(ImagePath),
              height: 100,
              width: 75,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ResName,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                ResOffer,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}
