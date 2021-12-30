import 'package:clubsma/pass_screen.dart';
import 'package:clubsma/promotion_screen.dart';
import 'package:clubsma/salle_plus.dart';
import 'package:flutter/material.dart';
import 'main.dart'as main;

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key? key}) : super(key: key);
  static const routeName = '/tabs';
  late final String ville;
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontFamily: 'PoppinsBold',
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black87,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Marrakech',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontFamily: 'PoppinsBold'),
                ),
              ],
            ),
            actions: [
              Icon(
                Icons.location_on,
                color: Colors.black,
                size: 20,
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                fontFamily: 'PoppinsBold',
              ),
              tabs: [
                Tab(
                  text: 'Club et salles de sport',
                ),
                Tab(
                  text: 'Passe d\'acces',
                ),
                Tab(
                  text: 'Promotions',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            SallePlus(),
            PassScreen(),
            PromotionScreen(),
          ]),
        ));
  }
}
