// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final iconsImagePath;
  final String ButtonText;
  final PageNameRoute;
  const Mybutton(
      {Key? key,
      required this.iconsImagePath,
      required this.ButtonText,
      required this.PageNameRoute})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (() {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PageNameRoute),
            );
          }),
          child: Container(
            height: 90,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20,
                      spreadRadius: 10)
                ]),
            child: Center(
              child: Image.asset(
                iconsImagePath,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          ButtonText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
