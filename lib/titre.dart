import 'package:flutter/material.dart';

class Titre extends StatelessWidget {
  final String titre;
  final String voir;

  Titre(this.titre,this.voir);

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
          Text(
            voir,
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
