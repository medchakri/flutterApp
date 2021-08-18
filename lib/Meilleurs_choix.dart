import 'package:clubsma/five_stars.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeilleursChoix extends StatelessWidget {
  const MeilleursChoix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 260,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: GridTile(
          header: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.amber,
            ),
            height: 30,
            width: 30,
            // color: Colors.amber,
            margin: EdgeInsets.only(
                right: 10,
                left: MediaQuery.of(context).size.width - 85,
                top: 10),
            child: Icon(
              FontAwesomeIcons.trophy,
              color: Colors.white,
              size: 16,
            ),
          ),
          child: Image.network(
            'https://images.unsplash.com/photo-1556817411-31ae72fa3ea0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
            fit: BoxFit.cover,
          ),
          footer: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Colors.black87,
                  Colors.black54,
                  Colors.black45,
                  Colors.black38,
                  Colors.black26,
                  Colors.black12,


                  // Colors.transparent,
                  // Colors.white10,
                ],
              ),
            ),
            height: 70,
            child: GridTileBar(
              // backgroundColor: Colors.black12,
              title: Container(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 600,
                      child: Text(
                        'CLUB MOOV\'UP FITNESS',
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PoppinsBold'),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Club de sport à Agadir',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'PoppinsBold'),
                      ),
                    ),
                    FiveStars(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
