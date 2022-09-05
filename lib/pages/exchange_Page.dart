// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../util/sender_Info.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({Key? key}) : super(key: key);

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  var dropdownValue = newValue;
  var dropdownValue1 = newValue;
  static get newValue => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        tooltip: 'Exchanging',
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                  Expanded(
                    child: Text(
                      'Exchange Your Currency ',
                      style: TextStyle(fontSize: 24),
                    ),
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
                    'Account ',
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
                    'Exchange ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Information'),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //from cuur

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('From'),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple.shade400),
                    borderRadius: BorderRadius.circular(10),
                    underline: Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.grey[400],
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['USD', 'EURO', 'IQD', 'AED']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),

//Amount TextBox
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.currency_exchange_rounded),
                    hintText: 'Enter Amount For Exchange',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),

//TO Currence
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('To'),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue1,
                    icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple.shade400),
                    borderRadius: BorderRadius.circular(10),
                    underline: Divider(
                      height: 2,
                      thickness: 2,
                      color: Colors.grey[400],
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    items: <String>['USD', 'EURO', 'IQD', 'AED']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),

//final result

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.currency_exchange_rounded),
                    hintText: 'Result',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
