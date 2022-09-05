// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:financeapp/pages/pay_Bills.dart';
import 'package:financeapp/pages/send_Money.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../util/my_Buttons_Home.dart';
import '../util/my_Cards.dart';
import '../util/my_List_Tile.dart';

// import 'agent_Page.dart';
import 'add_Card_Page.dart';
import 'exchange_Page.dart';
import 'our_Partener_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  int _page = 0;
  final List pagees = [Home(), PartenerPage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // // floatingActionButton: FloatingActionButton(
      // //   onPressed: () {},
      // //   backgroundColor: Colors.pink,
      // //   child: Icon(Icons.monetization_on),
      // // ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.grey[200],
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 10.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.account_balance_outlined,
      //               size: 28,
      //             )),
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(
      //               Icons.layers_outlined,
      //               size: 28,
      //             )),
      //         IconButton(
      //             onPressed: () {},
      //             icon: Icon(Icons.menu_open_rounded, size: 28)),
      //       ],
      //     ),
      //   ),
      // ),

      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 500),
        height: 60,
        index: 0,
        //onTap: () {},

        // (index) {
        //   switch (index) {
        //     case 0:
        //       Navigator.of(context)
        //           .push(MaterialPageRoute(builder: (context) => Home()));
        //       break;
        //     case 1:
        //       Navigator.of(context).push(
        //           MaterialPageRoute(builder: (context) => PartenerPage()));
        //       break;
        //     case 2:
        //       Navigator.of(context).push(
        //           MaterialPageRoute(builder: (context) => ExchangePage()));
        //       break;
        //   }
        // },

        color: Colors.grey.shade100,
        backgroundColor: Colors.transparent,
        items: [
          Icon(
            Icons.account_balance_outlined,
            size: 28,
            color: Colors.deepPurple.shade400,
          ),
          Icon(
            Icons.layers_outlined,
            size: 28,
            color: Colors.deepPurple.shade400,
          ),
          Icon(
            Icons.menu_open_rounded,
            size: 28,
            color: Colors.deepPurple.shade400,
          ),
        ],
        // letIndexChange: (index) => true,
      ),

      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AddCard()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.transparent),
                      child: Image.asset(
                        'lib/icons/plus.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25, //Spac
            ),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Mycard(
                    balance: 1500,
                    cardNum: 5213720455432218,
                    expiryMonth: 12,
                    expiryYear: 22,
                    Color: Colors.deepPurple[700],
                    cardTypePath: 'lib/icons/visa.png',
                  ),
                  Mycard(
                    balance: 900,
                    cardNum: 5213720457932254,
                    expiryMonth: 01,
                    expiryYear: 23,
                    Color: Colors.blueGrey[700],
                    cardTypePath: 'lib/icons/paypal.png',
                  ),
                  Mycard(
                    balance: 600,
                    cardNum: 5213720457889654,
                    expiryMonth: 11,
                    expiryYear: 21,
                    Color: Colors.purple[400],
                    cardTypePath: 'lib/icons/american-express (1).png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(
              height: 25,
            ),
            //send
            SizedBox(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Mybutton(
                        iconsImagePath: 'lib/icons/money-transaction.png',
                        ButtonText: 'Send',
                        PageNameRoute: SendMoney(),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Mybutton(
                          iconsImagePath: 'lib/icons/bill.png',
                          ButtonText: 'Bills',
                          PageNameRoute: BillsPage()),
                      SizedBox(
                        width: 15,
                      ),
                      Mybutton(
                        iconsImagePath: 'lib/icons/money-exchange.png',
                        ButtonText: 'Exchange',
                        PageNameRoute: ExchangePage(),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Mybutton(
                          iconsImagePath: 'lib/icons/participant.png',
                          ButtonText: 'Our Agnet',
                          PageNameRoute: 'AgentPage()')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      MyListTile(
                          iconsImagePath: 'lib/icons/statistics.png',
                          tileTitle: 'Statistics',
                          tileSubTitle: 'Payment  And Income'),
                      SizedBox(
                        height: 15,
                      ),
                      //transaction history
                      MyListTile(
                          iconsImagePath: 'lib/icons/history.png',
                          tileTitle: 'History',
                          tileSubTitle: 'Your Account History'),
                      SizedBox(
                        height: 15,
                      ),
                      MyListTile(
                          iconsImagePath: 'lib/icons/index.png',
                          tileTitle: 'Trading account',
                          tileSubTitle: 'Your Investement\nStocks,Crypto..')
                      // // statistics
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
