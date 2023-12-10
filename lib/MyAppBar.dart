import 'package:flutter/material.dart';
import 'package:flutter_effective/Strings.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      pinned: true,
      floating: true,
      snap: true,
      titleSpacing: 0,
      centerTitle: true,
      expandedHeight: 280,
      leadingWidth: 68,
      leading: IconButton(
          padding: EdgeInsets.only(left: 14, right: 12),
          icon: Icon(Icons.close, color: Colors.green, size: 24,),
          onPressed: () {},
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.only(left: 12, right: 14),
          icon: Icon(Icons.input, color: Colors.green, size: 24),
          onPressed: () {},
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        centerTitle: true,
          background: SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 14),),
                Image.asset('assets/image/ekaterina.png', width: 110, height: 110,),
                Padding(padding: EdgeInsets.only(bottom: 36),),
                Text(Strings.userName, style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'SfProDisplay',
              ),
            )
          ],
        ),
      ),
    ),
    bottom: const TabBar(
      indicatorColor: Colors.green,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      tabs: [
        Tab(
          child: Text(Strings.profile, style: TextStyle(
              fontSize: 16,
              fontFamily: 'SfProText',
            ),
          ),
        ),
        Tab(
          child: Text(Strings.settings, style: TextStyle(
              fontSize: 16,
              fontFamily: 'SfProText',
            )
          ),
        ),
      ],
    ),
  );
}
}