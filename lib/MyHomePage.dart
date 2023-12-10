import 'package:flutter/material.dart';
import 'package:flutter_effective/MyAppBar.dart';
import 'package:flutter_effective/Profile.dart';
import 'package:flutter_effective/Settings.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(title: 'Profile Page'),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin{

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: DefaultTabController(
          length: 2,
          child: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  MyAppBar(),
                ];
              },
              body: const TabBarView(
                children: [
                  Profile(),
                  Settings(),
              ],
            )
          ),
        ),
      )
    );
  }
}

