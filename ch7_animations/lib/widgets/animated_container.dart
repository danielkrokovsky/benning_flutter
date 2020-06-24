import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedContainerWidget extends StatefulWidget {

  const AnimatedContainerWidget({Key key,}) : super(key: key);

  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {

  double _height = 100.0;
  double _width = 100.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInCubic,
          color: Colors.amber,
          height: _height,
          width: _width,
          child: FlatButton(
            child: Text('Tap to\nGrow Width\n$_width'),
            onPressed: () {
              _increaseWidth(context);
            },
          ),
        ),
      ],
    );
  }

  _increaseWidth(BuildContext context) {
    setState(() {
      _width = _width >= /*MediaQuery.of(context).size.width - 10*/ 320 ? 100.0 : _width += 50.0;
    });
  }
}
