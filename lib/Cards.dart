import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String price;

  const Cards(
      {super.key, required this.image,
      required this.name,
      required this.date,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
       width: 240,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(image),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  Text(name, style: const TextStyle(
                      fontFamily: 'SfProText',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.4,
                      color: Colors.black,
                    )
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 22)),
              Text(date, textAlign: TextAlign.start,
                style: const TextStyle(
                  fontFamily: 'SfProText',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.406,
                  color: Colors.black,
               )
              ),
              Text(price, textAlign: TextAlign.start,
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
        )
      )
    );
  }
}