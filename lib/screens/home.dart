import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:convert';
import 'package:flutter/scheduler.dart';

import 'package:vertical_tabs/vertical_tabs.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            LeftWidget(),
            Expanded(
              child: RightWidget(),
            )
          ],
        ),
      ),
    );
  }
}


class LeftWidget extends StatefulWidget{
  @override
  _LeftWidgetState createState() => _LeftWidgetState();
}
class _LeftWidgetState extends State<LeftWidget>{
  List<String> _list = ["New Orden", "Tickets", "Settings", "Switch user",""];

  List<GlobalKey> _keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  List<String> _icons = ["Assets/newOrder.png", "Assets/tickets.png", "Assets/settingsIcon.png", "Assets/switchUser.png","Assets/titulo.png"];
  int checkIndex = 0;

  @override
  void initState() {
    checkIndex = _list.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Color(0xff565962)
      ),
      child: Column(//crossAxisAlignment: CrossAxisAlignment.center,
        children: buildList(),
      ),
      );
  }
  List<Widget> buildList(){
    List<Widget> widgetList = [];
    widgetList.add(Padding(
      padding: EdgeInsets.only(
        top:30,
      ),
    ));

    widgetList.add(
      Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset('Assets/usuario.png')
          ),
          Divider(
            color: Colors.black,
          )
        ],
      )

    );
    for (int i = 0; i < _list.length; i++) {
      widgetList.add(Expanded(
        child: GestureDetector(
            onTap: () {
              indexChecked(i);
            },
            child: ListText(
                _list[i],
                _keys[i],
                _icons[i],
                checkIndex == i
            ),)// &&
                    //(_animationController != null &&_animationController.isCompleted))),
      ));
    }
    return widgetList;
  }

  void indexChecked(int i) {
    print(checkIndex);
    print(i);
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
      //calcuteCheckOffset();
      //addAnimation();
    });
  }
}

class ListText extends StatelessWidget {
  String name;
  GlobalKey globalKey;
  String icon;
  bool checked;

  ListText(this.name, this.globalKey,this.icon, this.checked);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  MediaQuery.of(context).size.width,
      key: globalKey,
      decoration: BoxDecoration(
        color: checked ? Color(0xffD1058A): Color(0xff565962),
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      //quarterTurns: 3,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(icon)
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],


      ),
    );
  }
}
class RightWidget extends StatefulWidget {
  @override
  _RightWidgetState createState() => _RightWidgetState();
}

class _RightWidgetState extends State<RightWidget>
    with TickerProviderStateMixin {
  TabController _tabController;
  var _bottomBarIndex = 0;
  String title = "Screen 0";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0,vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Text(
              "MENU",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
