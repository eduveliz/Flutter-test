import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings>{
  List<NewItem> items = <NewItem>[
    NewItem(header: "RESTAURANT",body: Text("aafs")),
    NewItem(header: "MENU",body: Text("aafs")),
    //give all your items here
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: 120,
              color: Color(0xff565962),
              child: ListView(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("RESTAURANT",style: TextStyle(color: Colors.white, fontSize: 8)),
                    trailing: Icon(Icons.expand_more),
                    backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Text("General",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("My Profile",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("End of day",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),)
                      ],)
                    ],
                  ),
                  ExpansionTile(
                    title: Text("MENU",style: TextStyle(color: Colors.white, fontSize: 12)),
                    trailing: Icon(Icons.expand_more,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Text("General",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("My Profile",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("End of day",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),)
                      ],)
                    ],
                  ),
                  ExpansionTile(
                    title: Text("STAFF",style: TextStyle(color: Colors.white, fontSize: 12)),
                    trailing: Icon(Icons.expand_more,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Text("End of day",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),)
                      ],)
                    ],
                  ),
                  ExpansionTile(
                    title: Text("PAYMENT",style: TextStyle(color: Colors.white, fontSize: 9)),
                    trailing: Icon(Icons.expand_more,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Text("General",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("My Profile",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),),
                        Text("End of day",textAlign:TextAlign.center,
                          style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black87, fontSize: 10),)
                      ],)
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: ListView(
                  children: <Widget>[
                    Text("GENERAL",style:TextStyle(fontSize:15,fontWeight: FontWeight.w700),),
                    Text("RESTAURANT INFORMATION",style:TextStyle(color: Color(0xffD1058A),fontSize:9,fontWeight: FontWeight.w500),),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(margin: EdgeInsets.all(10),
                              child: Wrap(
                                children: <Widget>[
                                  Text("RESTAURANT NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                  Container(
                                    //margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.only(left:10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(18)
                                    ),
                                    child: TextFormField(style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(5),
                                          hintText:'Red Chillies' ,
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                                ],
                              ))
                        ),
                        Expanded(child: Container(margin: EdgeInsets.all(10),
                           child: Wrap(
                            children: <Widget>[
                              Text("RESTAURANT TYPE",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                              Container(
                                //margin: EdgeInsets.all(5),
                                padding: EdgeInsets.only(left:10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(18)
                                ),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 12),
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(5),
                                      hintText:'Restaurant System' ,
                                      border: InputBorder.none
                                  ),
                                ),
                              )
                            ],
                          ))
                          )
                      ],
                    ),
                    Container(margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Wrap(
                          children: <Widget>[
                            Text("RESTAURANT BIO",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            Container(
                              //margin: EdgeInsets.all(5),
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child: TextFormField(
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                    hintText:'Enter a brief bio about your restaurant.' ,
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        )),
                    Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Wrap(
                          children: <Widget>[
                            Text("RESTAURANT EMAIL",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            Container(
                              //margin: EdgeInsets.all(5),
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child: TextFormField( style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(contentPadding: EdgeInsets.all(5),
                                    hintText:'Email' ,
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        )),
                    Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Wrap(
                          children: <Widget>[
                            Text("ADDRESS",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            Container(
                              //margin: EdgeInsets.all(5),
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(18)
                              ),
                              child: TextFormField(style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(contentPadding: EdgeInsets.all(5),
                                    hintText:'Address' ,
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        )),
                    Row(children: <Widget>[
                      Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("CITY",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.all(5),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("STATE",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.all(5),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                         child: Wrap(
                           children: <Widget>[
                             Text("ZIP CODE",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                             Container(
                               //margin: EdgeInsets.all(5),
                               padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                               decoration: BoxDecoration(
                                   border: Border.all(color: Colors.grey),
                                   borderRadius: BorderRadius.circular(18)
                               ),
                               child: TextFormField(
                                 style: TextStyle(fontSize: 12),
                                 decoration: InputDecoration(contentPadding: EdgeInsets.all(5),
                                     hintText:'M' ,
                                     border: InputBorder.none
                                 ),
                               ),
                             )
                           ],
                         )))
                    ],),
                    Divider(color: Color(0xffD1058A),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("SCHEDULE INFORMATION",style: TextStyle(color: Color(0xffD1058A),fontSize: 12),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;
  NewItem({this.isExpanded=false, this.header, this.body, this.iconpic});
}
class dropDownbuttons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        /*
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded){
            setState(() {
              items[index].isExpanded = !items[index].isExpanded;
            });
          },
          children: items.map<ExpansionPanel>((NewItem item){
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title:Text(item.header),
                  );
                },
                isExpanded: item.isExpanded,
                body: item.body
            );
          }).toList(),
        )
        */
      ],
    );
  }
}
