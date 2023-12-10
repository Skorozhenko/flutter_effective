//import 'package:flutter/material.dart';

class Data {
  static List<CardData> list = [
    CardData(
      title: "СберПрайм",
      date: "Платеж 9 июля",
      price: "199 ₽ в месяц",
      image: "assets/image/Group 123.png"
    ),
    CardData(
      title: "Переводы",
      date: "Автопродление 21 августа",
      price: "199 ₽ в месяц",
      image: "assets/image/ic_36_percent_fill.png"
    )
  ];

  static List<String> hashtags = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука"
  ];
}

class CardData {
  String title;
  String date;
  String price;
  String image;
  CardData(
    {
      required this.title,
      required this.date,
      required this.price,
      required this.image
    }
  );
}