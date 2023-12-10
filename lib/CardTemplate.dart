import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String secondaryText;
  final bool makeBorder;

  const CardTemplate(
      {super.key,
      required this.icon,
      required this.mainText,
      required this.secondaryText,
      required this.makeBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.green,
              size: 30,
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(mainText,
                    style: const TextStyle(
                          fontFamily: 'SfProText',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.4,
                        ),
                    ),
                if (secondaryText != "")
                  Text(secondaryText,
                      style: const TextStyle(
                          fontFamily: 'SfProText',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.406,
                          color: Colors.grey
                        )
                  )
              ],
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.keyboard_arrow_right,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}