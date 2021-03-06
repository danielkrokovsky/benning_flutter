import 'package:ch8_drawer/widgets/RightDrawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'birthdays.dart';
import 'gratitude.dart';
import 'reminders.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.addListener(_tabChanged);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  void _tabChanged() {
    if (_tabController.indexIsChanging) {
      print('_tabController: ${_tabController.index}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.access_alarm)
        ],
      ),
      body: SafeArea(
        child: Container(),
      ),
      /*
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black54,
          unselectedLabelColor: Colors.black38,
          tabs: <Widget>[
            Tab(
                icon:Icon(Icons.cake),
                text: 'Birthdays',
            ),
            Tab(
                icon:Icon(Icons.sentiment_satisfied),
                text:'Gratitude',
            ),
            Tab(
                icon:Icon(Icons.access_alarm),
                text:'Reminders',
            ),
          ],
        ),
      ),*/
      drawer:RightDrawerWidget(),
    );
  }
}
