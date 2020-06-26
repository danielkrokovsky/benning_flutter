import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key key,
    @required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {

    Icon icon;

    return ListTile(
      leading: Icon(
        Icons.directions_car,
        size: 48.0,
        color: Colors.lightGreen,
      ),
      title: Text('Car $index'),
      subtitle: Text('Very Cool'),
      trailing: (index % 3).isEven
          ? Icon(Icons.bookmark_border)
          : Icon(Icons.bookmark),
      selected: false,
      onTap: () {
        icon = (index % 3).isEven
            ? Icon(Icons.bookmark_border)
            : Icon(Icons.bookmark);
      },
    );
  }


}
