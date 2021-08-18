import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FiveStars extends StatelessWidget {
  const FiveStars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 10,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 10,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 10,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 10,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 10,
        ),
      ],
    );
  }
}
