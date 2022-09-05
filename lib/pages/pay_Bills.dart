// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../util/sender_Info.dart';

class BillsPage extends StatefulWidget {
  const BillsPage({Key? key}) : super(key: key);

  @override
  State<BillsPage> createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Paying Bills',
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
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
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: Image.asset(
                          'lib/icons/previous.png',
                        )),
                  ),
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
                    'Pay Your Bills ',
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
                    'Sender ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Information'),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //three containers
              //select card to transfare from
              SenderInfo(
                txt: 'Select Card To Transfare From',
                iconName: 'lib/icons/arow.png',
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[400],
                endIndent: 10,
                indent: 10,
              ),
              //cardnumber
              SenderInfo(
                txt: 'Your Account Number :   62130008',
                iconName: 'lib/icons/credit-card.png',
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[400],
                endIndent: 10,
                indent: 10,
              ),
              //account balance
              SenderInfo(
                  txt: 'Account Balance:    1450\$',
                  iconName: 'lib/icons/money-exchange (1).png'),

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
                    'Bill ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Information'),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //Tex=> company Name
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_sharp),
                    hintText: 'Enter Company Name',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              //text=> customer name
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.business),
                    hintText: 'Enter Customer Name',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),

              //text=> Mobile phone number
              SizedBox(
                height: 15,
              ),
              TextField(
                maxLength: 11,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: 'Enter Customer Mobile Phone',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              //text=> Bill number
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.numbers),
                    hintText: 'Enter Bill Number',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),

              //text=> Amount

              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.attach_money_outlined),
                    hintText: 'Enter Amount',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
