import 'package:flutter/material.dart';

class SalleItem extends StatelessWidget {
  //const SalleItem({Key? key}) : super(key: key);
  final String imageUrl;
  final String name;
  final String description;
  final Widget stars;
  final String demande;

  SalleItem(
      this.imageUrl, this.name, this.description, this.stars, this.demande);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width ,
      padding: EdgeInsets.only(bottom: 9,left: 3),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
      margin: EdgeInsets.only(left: 15),
      child: Row(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 120,
                child: Image.network(
                  imageUrl,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'PoppinsBold',
                      fontWeight: FontWeight.w900),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 110),
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: stars,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 250,
                  child: Text(
                    demande,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'PoppinsBold',
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
