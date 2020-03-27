import 'package:flutter/material.dart';
import 'package:eatos_app/screens/newOrder.dart';
import 'package:eatos_app/screens/ticketsPage.dart';
import 'package:eatos_app/screens/settings.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  List<String> _list = ["New Orden", "Tickets", "Settings", "Switch user",""];
  List<GlobalKey> _keys = [GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(), GlobalKey(),];
  List<String> _icons = ["Assets/newOrder.png", "Assets/tickets.png", "Assets/settingsIcon.png", "Assets/switchUser.png","Assets/titulo.png"];
  int checkIndex = 0;

  @override
  void initState() {
    checkIndex = 0;
    super.initState();
  }
  void indexChecked(int i) {
    print(checkIndex);
    print(i);
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
          Container(
            width: 55,
            color: Color(0xff565962),
            child: Column(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(),
                        )
                    ),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Image.asset('Assets/usuario.png')
                ),
                for (int i = 0; i < _list.length; i++)
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=> indexChecked(i),
                      child: ListText(
                    _list[i], _keys[i], _icons[i], checkIndex == i)
                    )// &&
                  )
              ],//crossAxisAlignment: CrossAxisAlignment.center
            ),
          ),
          if(checkIndex==0)
            Expanded(
              child: NewOrden(),
            )
          else
            if(checkIndex==1)
              Expanded(
                child: Tickets())
            else if(checkIndex==2)
              Expanded(
                  child: Settings()
              )
          ]
        )
        ),
      );

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
        color: checked ? Color(0xffC61B7F): Color(0xff565962),
        border: Border(
          bottom: BorderSide(),
        ),
      ),
      //quarterTurns: 3,

      child: Center(child:Wrap(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(5),
              child: Center(
                child:Container(width: 30,
                  child:Image.asset(icon))
              )
          ),
          Center(child:Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),)
          ),
        ],
      ),
      )
    );
  }
}