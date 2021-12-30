import 'package:clubsma/Meilleurs_choix.dart';
import 'package:clubsma/five_stars.dart';
import 'package:clubsma/map_page.dart';
import 'package:clubsma/nave_bar.dart';
import 'package:clubsma/salle_item.dart';
import 'package:clubsma/titre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SallePlus extends StatefulWidget {
  //const SallePlus({Key? key}) : super(key: key);

  @override
  _SallePlusState createState() => _SallePlusState();
}

class _SallePlusState extends State<SallePlus> {
  String dropdownValue = 'Tous les sports';
  String gender = 'Pour tous';

  bool _showcart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     color: Colors.black87,
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'Marrakech',
      //         style: TextStyle(
      //             fontSize: 14.0,
      //             color: Colors.black,
      //             fontFamily: 'PoppinsBold'),
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.location_on,
      //       color: Colors.black,
      //       size: 20,
      //     ),
      //   ],
      // bottom: TabController(
      //   length: 3,
      //   child: TabBar(
      //     tabs: [
      //       Tab(
      //         text: 'Club et salles de sport',
      //       ),
      //       Tab(
      //         text: 'Passe d\'acces',
      //       ),
      //       Tab(
      //         text: 'Promotion',
      //       ),
      //     ],
      //   ),
      // ),
      //),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5),
              // child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black87,
                    ),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage()));
                      setState(() {
                        if (_showcart == false) {
                          _showcart = true;
                        } else {
                          _showcart = false;
                        }
                      });
                    },
                    child: Text(
                      _showcart ?  'List' : 'Carte',
                      style: TextStyle(
                        // color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold',
                        //fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //       side: BorderSide(
                  //         width: 2,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //
                  //     // side: BorderSide(
                  //     //   width: 2,
                  //     //   color: Colors.black,
                  //     // )
                  //     // onSurface: Colors.black87
                  //   ),
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Tous les sport',
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 14,
                  //       fontFamily: 'PoppinsBold',
                  //       //fontWeight: FontWeight.w800
                  //     ),
                  //   ),
                  // ),

                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(5.0)),
                    //contentPadding: EdgeInsets.all(10),

                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        // icon: const Icon(Icons.arrow_downward),
                        // iconSize: 24,
                        // elevation: 16,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),

                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Tous les sports',
                          'Equitation',
                          'CrossFit',
                          'Natation'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //       side: BorderSide(
                  //         width: 2,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ),
                  //   onPressed: () {},
                  //   child: Text(
                  //     'Pour tous',
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 14,
                  //       fontFamily: 'PoppinsBold',
                  //       //fontWeight: FontWeight.w800
                  //     ),
                  //   ),
                  // ),

                  Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(5.0)),
                    //contentPadding: EdgeInsets.all(10),

                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: gender,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            gender = newValue!;
                          });
                        },
                        items: <String>[
                          'Pour tous',
                          'Homme',
                          'Femme',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              // ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              height: 50,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black26,
                    width: .0,
                  ),
                ),
              ),
              child: Text(
                'Marrakech',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'PoppinsBold',
                    fontWeight: FontWeight.w900),
              ),
            ),
            _showcart
                ? MapPage()
                : Column(
                    children: [
                      Titre(
                        'Meilleurs choix sur Marrakech',
                        '  ',
                        '',
                      ),
                      MeilleursChoix(),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        //height: 260,
                        // width: MediaQuery.of(context).size.width - 20,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            children: [
                              SalleItem(
                                'https://www.clubs.ma/assets/img280/1402/studio-fitness-salle-de-sport-agadir-1402.jpg',
                                'Atlantic Tennis Académie Agadir',
                                'Club de sport à Agadir',
                                FiveStars(),
                                'Réserver Maintenant votre passe',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SalleItem(
                                'https://www.clubs.ma/assets/img280/1402/studio-fitness-salle-de-sport-agadir-1402.jpg',
                                'Atlantic Tennis Académie Agadir',
                                'Club de sport à Agadir',
                                FiveStars(),
                                'Réserver Maintenant votre passe',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SalleItem(
                                'https://www.clubs.ma/assets/img280/1402/studio-fitness-salle-de-sport-agadir-1402.jpg',
                                'Atlantic Tennis Académie Agadir',
                                'Club de sport à Agadir',
                                FiveStars(),
                                'Réserver Maintenant votre passe',
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
      bottomNavigationBar: NaveBar(),
    );
  }
}
