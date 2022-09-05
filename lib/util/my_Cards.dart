// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final double balance;
  final int cardNum;
  final int expiryMonth;
  final int expiryYear;
  final Color;
  final String cardTypePath;
  const Mycard(
      {Key? key,
      required this.balance,
      required this.cardNum,
      required this.expiryMonth,
      required this.expiryYear,
      required this.Color,
      required this.cardTypePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Image.asset(
                  cardTypePath,
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(balance.toString() + '\$',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //cardnum
                Text(cardNum.toString(), style: TextStyle(color: Colors.white)),
                Text(expiryMonth.toString() + '/' + expiryYear.toString(),
                    style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
