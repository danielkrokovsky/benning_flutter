import 'package:ch9_listview/widgets/grid_count.dart';
import 'package:ch9_listview/widgets/row.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'header.dart';
import 'row_with_card.dart';

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: GridCount(),
        /*
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index){
            if (index == 0) {
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(index: index);
            } else {
              return RowWidget(index: index);
            }
          },
        ),*/
      ),
    );
  }
}
