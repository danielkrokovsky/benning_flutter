import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 5,
      padding: EdgeInsets.all(8.0), children: List.generate(7000, (index) {
        print('_buildGridView $index');
        return Card(
          margin: EdgeInsets.all(8.0),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.access_alarm,
                  size: 48.0,
                  color: Colors.blue,
                ),
                Divider(),
                Text(
                  'Index $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onTap: () {
              print('Row $index');
            },
          ),
        );
      },),
    );
  }
  }