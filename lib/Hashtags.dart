import 'package:flutter/material.dart';

class Hashtags extends StatefulWidget {
  final String title;

  const Hashtags({super.key, required this.title});

  @override
  _Hashtags createState() => _Hashtags(text: title);
}

class _Hashtags extends State<Hashtags> {
  bool chosen = false;

  final String text;
  _Hashtags({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.all(3.0),
      child: FloatingActionButton.extended(
        backgroundColor: Color(0xffebebeb),
        onPressed: () {},
        label: Text(text, 
            style: const TextStyle(
              fontFamily: 'SfProText',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: -0.406
            )
          ),
      ),
    );
  }
}