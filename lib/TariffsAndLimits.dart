import 'package:flutter/material.dart';
import 'package:flutter_effective/Strings.dart';
import 'package:flutter_effective/CardTemplate.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(Strings.tariffsLimitsTitle,
            style: TextStyle(
            fontFamily: 'SfProText',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.7,
            )
          ),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(Strings.tariffsLimitsText, style: TextStyle(
            fontFamily: 'SfProText',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.42,
            color: Colors.grey,
            )
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          const CardTemplate(
            icon: Icons.speed,
            mainText: Strings.changeLimit,
            secondaryText: Strings.changeLimitText,
            makeBorder: true
          ),
          const CardTemplate(
            icon: Icons.percent,
            mainText: Strings.transfers,
            secondaryText: Strings.transfersText,
            makeBorder: true
          ),
          const CardTemplate(
            icon: Icons.compare_arrows,
            mainText: Strings.informationText,
            secondaryText: "",
            makeBorder: false
          )
        ],
      ),
    );
  }
}

