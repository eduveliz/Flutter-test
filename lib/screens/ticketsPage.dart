import 'package:flutter/material.dart';

class Tickets extends StatefulWidget{
  @override
  _Tickets createState() => _Tickets();
}

class _Tickets extends State<Tickets>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xffF7F7F7),
      body: Row(
        children: <Widget>[
        Expanded(
          flex: 7,
          child:Container(
            child: Column(
              children: <Widget>[
                Container(width: MediaQuery.of(context).size.width,
                  //color: Colors.amber,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(child:Container(child: RaisedButton(onPressed: (){},
                            color: Colors.grey,
                            child: Wrap(
                              children: <Widget>[
                                Center(child:Text(
                                  "ORDER",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                            ))
                        )),
                        Flexible(child:Container(child: RaisedButton(onPressed: (){},
                            color: Colors.grey,
                            child: Wrap(
                              children: <Widget>[
                                Center(child:Text(
                                  "NAME",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                            ))
                        )),
                        Flexible(child:Container(child: RaisedButton(onPressed: (){},
                            color: Colors.grey,
                            child: Wrap(
                              children: <Widget>[
                                Center(child:Text(
                                  "TYPE",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                            ))
                        )),
                        Flexible(child:Container(child: RaisedButton(onPressed: (){},
                            color: Colors.grey,
                            child: Wrap(
                              children: <Widget>[
                                Center(child:Text(
                                  "STATUS",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                            ))
                        )),
                        Flexible(child:Container(child: RaisedButton(onPressed: (){},
                          color: Colors.grey,
                            child: Wrap(
                              children: <Widget>[
                                Center(child:Text(
                                  "TIMER",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                          ))
                        )),
                        Flexible(child:Container(//color: Colors.grey,
                           child: MaterialButton(onPressed: (){},
                            color: Colors.grey,
                              child: Wrap(
                                children: <Widget>[
                                Center(child:
                                  FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      "REVENUE",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                    ),
                                  )),
                                Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                              ],
                            ))
                        )),
                        Flexible(child:Container(
                            child: FlatButton(onPressed: (){},
                            color: Colors.grey,
                              child: Wrap(
                                children: <Widget>[
                                  Center(child:
                                    FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                      "PAYMENT",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                    ),
                                  )),
                                  Center(child:Icon(Icons.expand_more,size: 15,color: Colors.white,))
                                ],
                              ))
                        )),
                      ],
                    ),
                  ),
                Expanded(child: Container(
                  child:
                  Row(
                    children: <Widget>[
                      RaisedButton(onPressed: (){},
                          color: Colors.grey,
                          child:  Text(
                                  "T",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.center,
                                ),
                              ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                        ),
                        child: Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),)
              ],
            )
            ,
          )
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
                            child: Column(
                              children: <Widget>[
                                Wrap(direction: Axis.horizontal,
                                    children:[
                                      Text("New",style: TextStyle(color:Color(0xffD1058A),fontWeight: FontWeight.bold),),
                                      Text(" Guest")
                                    ]
                                ) ,
                                Text("ARRIVED AT",style: TextStyle(color: Colors.grey,fontSize:8),),
                              ],
                            )

                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child:Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.add_circle),
                              Icon(Icons.copyright),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  Container(//color: Colors.red,
                    height: 23,
                    child:
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(child:
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(color: Color(0xffD1058A),
                                border: Border.all(color:Color(0xffD1058A))),
                            child:Text("Dine-In",
                                style: TextStyle(fontSize: 12,color: Colors.white),textAlign: TextAlign.center),
                          )
                          ),
                          Expanded(child:
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffD1058A))),
                            child:Text("To-Go",
                                style: TextStyle(fontSize: 12,color: Color(0xffD1058A)),textAlign: TextAlign.center),
                          )),
                          Expanded(child:
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border: Border.all(color:Color(0xffD1058A))),
                            child:Text("Deliver",
                                style: TextStyle(fontSize: 12,color: Color(0xffD1058A)),textAlign: TextAlign.center),
                          )),
                          Expanded(child:
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffD1058A))),
                            child:Text("Banque",
                                style: TextStyle(fontSize: 12,color: Color(0xffD1058A)),textAlign: TextAlign.center),
                          ))
                        ]
                    ),
                  ),
                  Expanded(
                    child: Container(//color: Colors.greenAccent,
                      child: Center(
                        child: Text("Please select an item...",
                        style: TextStyle(color: Colors.grey),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
    ])
    );
  }
}