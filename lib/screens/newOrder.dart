import 'package:flutter/material.dart';

class NewOrden extends StatefulWidget{
  @override
  _NewOrden createState() => _NewOrden();
}

class _NewOrden extends State<NewOrden>{
  int checkIndex = 0;

  void indexChecked(int i) {
    print(checkIndex);
    print(i);
    if (checkIndex == i) return;
    setState(() {
      checkIndex = i;
    });
  }
  @override
  void initState() {
    checkIndex = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
              child: Column(
                children: <Widget>[
                  if(checkIndex==0)
                    Expanded(
                      child: customItems(),
                    ),
                  if(checkIndex==1)
                    Expanded(child: menuView()),
                  Align(
                      alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Expanded(
                          child:GestureDetector(
                            onTap: (){indexChecked(0);},
                            child: TextTab(
                              "Custom items", GlobalKey(), checkIndex == 0)
                        )),
                      Expanded(child:GestureDetector(
                            onTap: ()=> {indexChecked(1)},
                            child: TextTab(
                                "Menus", GlobalKey(), checkIndex == 1)
                        )),
                      Expanded(child: Container(
                        margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
                        height: 30,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xff565962),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                          ),
                        child: Text("-------"),
                        )),
                      Expanded(
                          child:Container(
                            height: 30,
                            margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                            color: Color(0xff565962),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                          ),
                            child: Center(
                              child:Text("Server Connected",style: TextStyle(fontSize: 13,color: Colors.green),
                              ),)
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(top:5,left: 5),
              //color: Colors.white,
              decoration: BoxDecoration(color: Colors.white,
                border: Border(left:BorderSide(width: 0.2,color: Colors.blueGrey),
                    top: BorderSide(width: 0.2,color: Colors.blueGrey),
                    //right:BorderSide(width: 0.2,color: Colors.red),
                    //bottom: BorderSide(width: 0.2,color: Colors.blueGrey)),
                //borderRadius: BorderRadius.only(topLeft:Radius.circular(15)
                )
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Wrap(
                            children:[
                              Text("New",style: TextStyle(color:Color(0xffE52897)),),
                              Text(" Guest")
                            ]
                          )
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                        child:Container(),
                      )
                    ],
                  ),
                  Container(//color: Color(0xffD1058A),
                    height: 23,
                    child:
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(child:
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(color: Color(0xffE52897),
                              border: Border.all(color:Color(0xffE52897))),
                              child:Text("Dine-In",
                            style: TextStyle(fontSize: 12,color: Colors.white),textAlign: TextAlign.center),
                            )
                          ),
                          Expanded(child:
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE52897))),
                              child:Text("To-Go",
                                style: TextStyle(fontSize: 12,color: Color(0xffE52897)),textAlign: TextAlign.center),
                          )),
                          Expanded(child:
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                border: Border.all(color:Color(0xffE52897))),
                              child:Text("Deliver",
                                style: TextStyle(fontSize: 12,color: Color(0xffE52897)),textAlign: TextAlign.center),
                          )),
                          Expanded(child:
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE52897))),
                            child:Text("Banque",
                                style: TextStyle(fontSize: 12,color: Color(0xffE52897)),textAlign: TextAlign.center),
                          ))
                        ]
                      ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class TextTab extends StatelessWidget {
  String name;
  GlobalKey globalKey;
  bool checked;

  TextTab(this.name, this.globalKey, this.checked);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
      padding: EdgeInsets.all(5) ,
      key: globalKey,
      decoration: BoxDecoration(
        color: checked ? Color(0xffE52897) : Color(0xff565962),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),topRight: Radius.circular(5)),
      ),
      child: Center(
        child: Text(name,style:TextStyle(color: Colors.white),),
      )
    );
  }
  //quarterTurns: 3,
}
class customItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            //width: MediaQuery.of(context).size.width,
            //color: Colors.greenAccent,
            child: Row(//direction: Axis.horizontal,
              children: <Widget>[
                Flexible(flex: 3,
                  child: Column(
                    children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          for (int i = 1; i < 4; i++)
                            Expanded(child:OutlineButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                child:Text(i.toString(),
                                    style: TextStyle(fontSize: 18),textAlign: TextAlign.center)
                            ))
                        ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                          for (int i = 4; i < 7; i++)
                            Expanded(child:Container(padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                              child: OutlineButton(
                                  onPressed: (){},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                  child:Text(i.toString(),
                                      style: TextStyle(fontSize: 16),textAlign: TextAlign.center)
                              ),
                            )
                            )
                        ],
                        ),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
                        for (int i = 7; i < 10; i++)
                          Expanded(child:Container(padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                            child: OutlineButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                child:Text(i.toString(),
                                    style: TextStyle(fontSize: 16),textAlign: TextAlign.center)
                            ),
                          )
                          )
                      ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                              Expanded(
                                flex:7,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                  child: OutlineButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                    ),child:Text('00',
                                      style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                                    onPressed: (){},
                                  )
                                )
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(2, 0, 5, 0),
                                    child: OutlineButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)
                                      ),child:Text('0',
                                        style: TextStyle(fontSize: 15),textAlign: TextAlign.center),
                                      onPressed: (){},
                                    )
                                )
                              )
                            ])
                        ],
                  )
                ),
                Flexible(
                  flex: 1,
                  child:
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(width:90,height:90,margin: EdgeInsets.only(bottom: 4),
                            child:OutlineButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child:Text('+',
                                    style: TextStyle(fontSize: 15),textAlign: TextAlign.center)
                            )
                        ),
                        Container(width:90,height:90,
                            child:OutlineButton(
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child:Text('+',
                                    style: TextStyle(fontSize: 15),textAlign: TextAlign.center)
                            )
                        )
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
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
    );
  }
}
class menuView extends StatelessWidget{
  List<String> menuOptions = <String> ["Gift Card","Service Charge","Add Guest"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(),
              ),child:Text("MENU",
                style: TextStyle(fontSize: 16),textAlign: TextAlign.center),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(width: 30,height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xffE52897),
                borderRadius: BorderRadius.circular(45),
              ),
                child: PopupMenuButton(padding: EdgeInsets.all(2),
                  onSelected: choiceAction,
                  icon: Icon(Icons.more_vert,color:Colors.white,size: 15,),
                  offset: Offset(0,40),
                  itemBuilder: (BuildContext context){
                    return menuOptions.map((option)=>
                        PopupMenuItem(
                          value: option,
                          child: Center(child: Row(
                              children:[Icon(Icons.person),Text(option)])),
                        ),
                    ).toList();
                  },
                ),
            ),
          )
        ],
      ),
    );
  }
  void choiceAction (String choice){

  }
}