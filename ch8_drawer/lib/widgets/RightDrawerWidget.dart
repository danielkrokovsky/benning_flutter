import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'menu_list_tile.dart';

class RightDrawerWidget extends StatelessWidget {
  const RightDrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home_top_mountain.jpg"),
                    fit: BoxFit.cover)),
            child: Text("Header"),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}