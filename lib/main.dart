import 'package:clubsma/Meilleurs_choix.dart';
import 'package:clubsma/five_stars.dart';
import 'package:clubsma/nave_bar.dart';
import 'package:clubsma/pass_item.dart';
import 'package:clubsma/salle_item.dart';
import 'package:clubsma/sport_item.dart';
import 'package:clubsma/tabs_screen.dart';
import 'package:clubsma/titre.dart';
import 'package:clubsma/ville.dart';
import 'package:clubsma/ville_api.dart';
import 'package:clubsma/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'my-global.dart' as global;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
          fontFamily: 'Poppin'),
      home: WelcomePage(),
      routes: {
        TabsScreen.routeName: (ctx) => TabsScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  //MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _typeAheadController = TextEditingController();
  final selectVille = 'Marrakech';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Clubs.ma"),
      // ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.all(16),
                      child: TypeAheadField<Ville?>(
                        debounceDuration: Duration(microseconds: 500),
                        textFieldConfiguration: TextFieldConfiguration(
                          //controller:  typeAheadController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 18,
                            ),
                            hintText: ('Marrakech'),
                            hintStyle: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontFamily: 'PoppinsBold'),
                            border: InputBorder.none,
                          ),
                          controller: _typeAheadController,

                        ),
                        suggestionsCallback: VilleApi.getVilleSuggestions,
                        itemBuilder: (context, Ville? suggestion) {
                          final ville = suggestion!;
                          return ListTile(
                            leading: Icon(
                              Icons.location_on,
                              size: 16,
                            ),
                            title: Text(
                              ville.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'PoppinsBold',
                                //fontWeight: FontWeight.w900
                              ),
                            ),
                          );
                        },
                        onSuggestionSelected: (Ville? suggestion) {
                          final ville = suggestion;
                          //setState(() {
                          this._typeAheadController.text = ville!.name;
                          // });

                          // print(ville!.id);
                        },
                      ),
                    ),
                    //margin: EdgeInsets.all(20),
                    // elevation: 10,
                    Container(
                      height: 250,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            //height: 250,
                            // margin: EdgeInsets.only(left: 80),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('assets/images/bgz.jpg'),
                                //NetworkImage(
                                //     'https://images.unsplash.com/photo-1423068657086-889315a2eba8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 240,
                            child: Text(
                              "Tu as envis de faire du sport aujourd'hui? ",
                              style: TextStyle(
                                  fontFamily: 'PoppinsBold', fontSize: 24),
                            ),
                          ),
                          Container(
                            //  padding:
                            // EdgeInsets.symmetric(vertical: 100, horizontal: 20),
                            margin: EdgeInsets.only(top: 160, left: 20),
                            //height: 45,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Explorer les passes',
                                style: TextStyle(
                                    fontFamily: 'PoppinsBold', fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Titre(
                      'Sport disponible sur ${_typeAheadController.text}',
                      'Voir tout',
                        '${_typeAheadController.text}',
                    ),

                    // Titre('Sport disponible sur Marrakech'),
                    Container(
                        // padding: EdgeInsets.only(top: 15),
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            SportItem('CROSSFIT',
                                'https://images.unsplash.com/photo-1578762560042-46ad127c95ea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                            SizedBox(
                              width: 10,
                            ),
                            SportItem('TENNIS',
                                'https://images.unsplash.com/photo-1602211844066-d3bb556e983b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80'),
                            SizedBox(
                              width: 10,
                            ),
                            SportItem('EQUITATION',
                                'https://images.unsplash.com/photo-1576183448756-b50211a9f079?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )),
                    Titre(
                      'Meilleurs choix sur ${_typeAheadController.text}',
                      '',
                        '${_typeAheadController.text}'
                    ),

                    MeilleursChoix(),

                    Titre(
                      'Club et salles de sport à ${_typeAheadController.text}',
                      'Voir tout',
                        '${_typeAheadController.text}'
                    ),

                    Container(
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

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // padding: EdgeInsets.only(top: 10),
                      color: Colors.black12,
                      child: Column(
                        children: [
                          Titre(
                            'Réserver des passes à ${_typeAheadController.text}',
                            'Voir tout',
                              '${_typeAheadController.text}',
                          ),
                          Container(
                            width: double.infinity,
                            //color: Colors.black12,
                            child: MediaQuery.removePadding(
                              removeTop: true,
                              context: context,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                children: [
                                  PassItem(
                                    'https://www.clubs.ma/assets/images/studio-fitness/club/logo/55d1b2e6a7af52f0f8f31c31c5b6be4e.jpg',
                                    'COURS BODYATTACK LESMILLS',
                                    'Club de sport à Agadir',
                                    '120 MAD',
                                    'Mardi 19h00 à 22h30',
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  PassItem(
                                    'https://www.clubs.ma/assets/images/kooraland-academy/club/logo/c46e6a4fb5c56e0c89648bfafa1daf78.jpg',
                                    'TERRAIN FOOTBALL A LOYER',
                                    'Club de sport à Agadir',
                                    '350 MAD',
                                    'Lundi 12h00 à 13h00',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: NaveBar(),
    );
  }
}
