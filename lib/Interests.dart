import 'package:flutter/material.dart';
import 'package:flutter_effective/Strings.dart';
import 'package:flutter_effective/Hashtags.dart';
import 'package:flutter_effective/Data.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(Strings.interestsTitle,
              style: TextStyle(
                fontFamily: 'SfProText',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.7,
                color: Colors.black,
              )
            ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          const Text(Strings.interestsText,
              style: TextStyle(
                fontFamily: 'SfProText',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.42,
                color: Colors.grey,
              )
            ),
          const Padding(padding: EdgeInsets.only(bottom: 16)),
          Wrap(
            children: <Widget>[
              for (int i = 0; i < Data.hashtags.length; i++)
                Hashtags(title: Data.hashtags[i]),
            ],
          )
        ],
      ),
    );
  }
}