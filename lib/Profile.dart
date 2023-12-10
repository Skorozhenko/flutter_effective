import 'package:flutter/material.dart';
import 'package:flutter_effective/SubscriptionCards.dart';
import 'package:flutter_effective/TariffsAndLimits.dart';
import 'package:flutter_effective/Interests.dart';

class Profile extends StatelessWidget {
  const Profile({super.key}); 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  SubscriptionCards(), 
                  TariffsAndLimits(), 
                  Interests()
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}