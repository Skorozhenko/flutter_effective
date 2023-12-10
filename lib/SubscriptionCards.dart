import 'package:flutter/material.dart';
import 'package:flutter_effective/Data.dart';
import 'package:flutter_effective/Cards.dart';
import 'package:flutter_effective/Strings.dart';


class SubscriptionCards extends StatelessWidget {
  const SubscriptionCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(Strings.subscriptionTitle, style: TextStyle(
                fontFamily: 'SfProText',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.7,
                color: Colors.black,
              )
            ),
            const Padding(padding: EdgeInsets.only(top: 8)),
            const Text(Strings.subscriptionText, style: TextStyle(
                fontFamily: 'SfProText',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.42,
                color: Colors.grey,
              )
            ),    
            SizedBox(
              height: 160,
              child: ListView(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 0; i < Data.list.length; i++)
                    Cards(
                      image: Data.list[i].image,
                      name: Data.list[i].title,
                      date: Data.list[i].date,
                      price: Data.list[i].price
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

