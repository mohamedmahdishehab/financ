import 'package:flutter/material.dart';

class partButton extends StatelessWidget {
  final PageNameRoute;
  final iconsImagePath;
  final ButtonText;
  const partButton({
    Key? key,
    required this.PageNameRoute,
    required this.iconsImagePath,
    required this.ButtonText,
  }) : super(key: key);

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
