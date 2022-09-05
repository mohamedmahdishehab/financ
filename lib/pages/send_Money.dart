// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../util/sender_Info.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Sending Money',
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                      'Transaction Info',
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
              //reciever information
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Reciever ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Information'),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //cardnumber
              TextField(
                maxLength: 16,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.input),
                    hintText: 'Enter The Account Number Or Card Number',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              SizedBox(
                height: 10,
              ),

              //amount
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    hintText: 'Enter The Amouont',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              SizedBox(
                height: 20,
              ),

              //submit
            ],
          ),
        ),
      ),
    );
  }
}
