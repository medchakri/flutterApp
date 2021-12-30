import 'package:clubsma/salle_plus.dart';
import 'package:clubsma/tabs_screen.dart';
import 'package:flutter/material.dart';

class Titre extends StatelessWidget {
  final String titre;
  final String voir;
  final String ville;
  Titre(this.titre,this.voir,this.ville);




  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //width: double.infinity,
           // padding: EdgeInsets.only(top: 10,bottom: 10),
            //margin: EdgeInsets.only(right: 170),
            child: Text(
              titre,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PoppinsBold',
                fontWeight: FontWeight.w800
              ),
            ),
          ),
          TextButton(
            onPressed: () {Navigator.of(context).pushNamed(TabsScreen.routeName);},
            child: Text(
              voir,
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
