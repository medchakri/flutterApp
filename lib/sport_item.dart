import 'package:flutter/material.dart';

class SportItem extends StatelessWidget {
  //const SportItem({Key? key}) : super(key: key);

  final String title;
  final String imageUrl;

  SportItem(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 150,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: GridTile(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                end: const Alignment(0.0, -1),
                begin: const Alignment(0.0, 0.4),
                colors: <Color>[
                  const Color(0x8A000000),
                  Colors.black12.withOpacity(0.0),
                  Colors.transparent,
                ],
              ),

            ),


            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.bottomCenter,
            //     end: Alignment.topCenter,
            //     colors: <Color>[
            //       Colors.black87,
            //       Colors.black54,
            //       Colors.black45,
            //       Colors.black38,
            //       Colors.black26,
            //       Colors.black12,
            //      // Colors.transparent,
            //     ],
            //   ),
            // ),
            //height: 50,
            child: GridTileBar(
              backgroundColor: Colors.black26,
              title: Container(
                //width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //width: 600,
                      margin: EdgeInsets.only(top: 30, right: 10),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins-Bold'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    //   ClipRRect(
    //   borderRadius: BorderRadius.circular(5),
    //   child: Stack(
    //     children: <Widget>[
    //       Container(
    //         width: 130,
    //         height: 150,
    //         child: Image.network(
    //           imageUrl,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       Container(
    //         margin: EdgeInsets.only(top: 105, left: 5),
    //         //width: 150,
    //         child: Text(
    //           title,
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               fontSize: 16,
    //               color: Colors.white,
    //               backgroundColor: Colors.black54,
    //               fontWeight: FontWeight.w700,
    //               fontFamily: 'Poppins-Bold'),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
