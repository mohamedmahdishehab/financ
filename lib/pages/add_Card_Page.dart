// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          tooltip: 'Adding Card',
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: Icon(Icons.add_card),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
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
                                color: Colors.transparent,
                                shape: BoxShape.circle),
                            child: Image.asset(
                              'lib/icons/previous.png',
                            )),
                      ),
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Text(
                        'Add Your Card ',
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
                        'Card ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Information'),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //Name on card
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_sharp),
                        label: Text('Enter Card Holder Name'),

                        // labelText: 'crd name',
                        hintText: 'mohamed',
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //card number
                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 16,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.credit_card),
                        label: Text('Enter Card Number'),
                        hintText: '5213 8204 **** ***33',
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //expirydate
                  TextField(
                    maxLength: 5,
                    enableSuggestions: true,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        label: Text('Enter Expiry Date'),
                        prefixIcon: Icon(Icons.person_outline_sharp),
                        hintText: '12/22',
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //cvc
                  TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    decoration: InputDecoration(
                        label: Text('Enter CVC Number'),
                        prefixIcon: Icon(Icons.safety_check_rounded),
                        hintText: '136',
                        focusedBorder: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
