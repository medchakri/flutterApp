import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassItem extends StatelessWidget {
  //const SalleItem({Key? key}) : super(key: key);
  final String imageUrl;
  final String name;
  final String description;
  final String prix;
  final String ouverture;

  PassItem(
      this.imageUrl, this.name, this.description, this.prix, this.ouverture);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15 , right: 15 , bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Container(
                width: 100,
                height: 100,
                child: Image.network(
                  imageUrl,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 10),
            //width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.only(right: 160),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'PoppinsBold',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                //SizedBox(height: 5,),
                Container(
                  //margin: EdgeInsets.only(right: 180),
                  child: Text(
                    description,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 11,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width - 180,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                       // width: MediaQuery.of(context).size.width - 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.watch_later,
                              color: Colors.green,
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            Text(
                              ouverture,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        prix,
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 14,
                            fontFamily: 'PoppinsBold',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
