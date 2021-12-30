import 'package:clubsma/nave_bar.dart';
import 'package:clubsma/pass_item.dart';
import 'package:clubsma/titre.dart';
import 'package:flutter/material.dart';

class PassScreen extends StatelessWidget {
  const PassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Titre(
              'Les passe disponible sur Marrakech',
              '  ',
              '',
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
                    ), PassItem(
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
      bottomNavigationBar: NaveBar(),
    );
  }
}
