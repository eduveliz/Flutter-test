import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:eatos_app/screens/newOrder.dart';
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: sideBar(),
      )

    );
  }
}

class sideBar extends StatefulWidget {
  @override
  menuBar createState() => menuBar();
}

class menuBar extends State<sideBar> with SingleTickerProviderStateMixin {
  var _bottomBarIndex = 0;
  String title = "Menu";
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
          {
            setState(() {
              title = "Profile";
            });
            break;
          }
        case 1:
          {
            setState(() {
              title = "New order";
            });
            break;
          }
        case 2:
          {
            setState(() {
              title = "Tickets";
            });
            break;
          }
        case 3:
          {
            setState(() {
              title = "Settings";
            });
            break;
          }
        case 4:
          {
            setState(() {
              title = "Switch user";
            });
            break;
          }

      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Row(
        children: <Widget>[
          RotatedBox(
            quarterTurns: 1,
            child: Column(
            children: <Widget>[
              Container(
                child:Material(
                  color: Color(0xff565962),
                  child: TabBar(
                    //unselectedLabelColor: Colors.blueGrey ,
                    indicator:BoxDecoration(
                        color: Color(0xffD1058A),
                    ),
                    controller: _tabController,
                    tabs: [
                      Tab(child: RotatedBox(
                        quarterTurns: -1,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset("Assets/usuario.png"),
                        ),
                      ),
                      ),
                      getItem(
                        icon: Image.asset("Assets/newOrder.png"),
                        text: Text(
                          "New Order",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      getItem(
                        icon: Image.asset("Assets/tickets.png"),
                        text: Text(
                          "Tickets",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      getItem(
                        icon: Image.asset("Assets/settingsIcon.png"),
                        text: Text(
                          "Settings",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      getItem(
                        icon: Image.asset("Assets/switchUser.png"),
                        text: Text(
                          "Switch User",
                          style: TextStyle(color: Colors.black),
                        ),
                  )
                    ],
                  ),
                )
              ),
            ],
            )
          ),
          Expanded(
            child: NewScreen(
              title: title,
            ),
          )
        ],
      ),
      ),
    );
  }

  Widget getItem({Image icon, Text text}) {
    return RotatedBox(
      quarterTurns: -1,
      child: Container(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(width: 40,child: icon)
          ), text],
      ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {

  const NewScreen({this.title});

  final String title;

  Widget getComponent (){
    if(title == 'New order'){
      return NewOrder();
    };
    if(title == 'Tickets'){
      return Tickets();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: getComponent()
      ),
    );
  }
}
class NewOrder extends StatelessWidget{
  String itemName;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff565962),
          bottom: TabBar(
            indicator:BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            color: Color(0xffD1058A)
            ) ,
            tabs: <Widget>[
              Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text('Custom items'),
              ),
            ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Menus'),
              ),
            ),
            Tab(
              child: Align(
              alignment: Alignment.center,
              child: Text('Server Connected'),
              )
      ),
          ],
        ),
      ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.all(10),
                children:[
                  Form(
                    child:Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      border: Border.all()
                    ),
                      child: TextFormField(
                      decoration: InputDecoration(
                      hintText:'Item Name' ,
                      border: InputBorder.none
                    ),
                    ),
                  ),
                ),
                  Container(
                    padding: EdgeInsets.all(5),
                    //width: MediaQuery.of(context).size.width,
                    //color: Colors.greenAccent,
                    child: Row(//direction: Axis.horizontal,
                    children: <Widget>[
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Container(//color: Colors.red,
                                child:Wrap(children: [
                                  for (int i = 1; i < 10; i++)
                                   /* OutlineButton(
                                      onPressed: (){},
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child:Text(i.toString(),
                                            style: TextStyle(fontSize: 15),textAlign: TextAlign.center)
                                    )*/
                                  Container(width: 50,margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                  border: Border.all(),
                                  ),
                                    child: Center(child:Text(i.toString(),
                                    style: TextStyle(fontSize: 25),textAlign: TextAlign.center),
                                    )
                                  )
                                ],)),
                            Container(//color: Colors.amber,
                              child:Row(children: <Widget>[
                                Flexible(
                                  flex:3,
                                  child: OutlineButton(
                                    shape: Border.all(width: 1,color: Colors.black),child:Text('00',
                                      style: TextStyle(fontSize: 25),textAlign: TextAlign.center),
                                    onPressed: (){},
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: OutlineButton(shape: Border.all(width: 1,color: Colors.black),
                                    child:Text('0',
                                      style: TextStyle(fontSize: 25),textAlign: TextAlign.center),
                                    onPressed: (){},
                                  ),
                                )
                            ])
                            )],
                          )
                        ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                          Container(
                                child:Container(width:70,height:80,decoration: BoxDecoration(
                                    border: Border.all()
                                ),
                                  child: Center(
                                    child: Text('+',textAlign: TextAlign.center,),
                                  ),
                                )
                            ),
                            Container(
                                child:Container(width:70,height:80,decoration: BoxDecoration(
                                    border: Border.all()
                                ),child: Center(
                                  child: Text('+',textAlign: TextAlign.center,),
                                )
                                )
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                  ),
                  Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                    child: Form(
                      child:Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText:'Item Name' ,
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  )
                ]
            ),
            Container(

            ),
            Container(

            )
          ],
      ),
      ),
    );
  }

  List<Widget> buildList(){
    List<Widget> numberList = [];
      for (int i = 1; i < 10; i++) {
        numberList.add(
        Container(width: 50,
          margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                border: Border.all(),
            ),
            child: Center(child:Text(i.toString(),
              style: TextStyle(fontSize: 25),textAlign: TextAlign.center),)
        )
        );
    }
      return numberList;
  }
}
class Tickets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DecoratedBox(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('Assets/tickets.png'),
            fit: BoxFit.cover,
            )
          ),
           child: SizedBox(
               child:Text('hola')
           )
      )
    );
  }
}