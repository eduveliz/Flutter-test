import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  @override
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings>{
  List<String> _list = ["General", "My Profile", "End of day", "Guestbook", "Menu","Categories","Modifiers",
    "Add-Ons","Products","Ingredients","Groups", "Employee","Schedule", "Gratuity","Taxes","Discounts",
    "Service Charge","Card Reader","Cash Managment","Payment Options", "Server","Printers","Cash Register","Printer Advanced"
  ];
  List<StatelessWidget> _listScreens = [PageGeneral(),Profile(),EndDay(),Profile(),Menu(),Profile(),Modifiers(),Profile(),Profile(),Menu(),
    Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu(),Menu()];
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
                    title: FittedBox(fit: BoxFit.fitWidth,child: Text("RESTAURANT",style: TextStyle(color: Colors.white))),
                    trailing: Icon(Icons.chevron_left,color: Colors.white),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Container(color: Colors.white,
                          child:Column(
                          children: <Widget>[
                            for (int i = 0; i < 4; i++)
                              GestureDetector(
                                onTap: (){indexChecked(i);},
                                child: TextTab(_list[i],checkIndex == i)
                              ),
                          ],
                        )
                        )
                      ])
                    ],
                  ),
                  ExpansionTile(
                      title: Text("MENU",style: TextStyle(color: Colors.white, fontSize: 10)),
                      trailing: Icon(Icons.chevron_left,color: Colors.white,),
                      //backgroundColor: Colors.yellow,
                      children: [
                        Column(children:[
                          Container(color: Colors.white,
                              child:Column(
                                children: <Widget>[
                                  for (int i = 4; i < 11; i++)
                                    GestureDetector(
                                        onTap: (){indexChecked(i);},
                                        child: TextTab(_list[i],checkIndex == i)
                                    ),
                                ],
                              )
                          )
                        ]
                        )
                      ],
                  ),
                  ExpansionTile(
                    title: Text("STAFF",style: TextStyle(color: Colors.white, fontSize: 10)),
                    trailing: Icon(Icons.chevron_left,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Container(color: Colors.white,
                            child:Column(
                              children: <Widget>[
                                for (int i = 11; i < 13; i++)
                                  GestureDetector(
                                      onTap: (){indexChecked(i);},
                                      child: TextTab(_list[i],checkIndex == i)
                                  ),
                              ],
                            )
                        )
                      ])
                    ],
                  ),
                  ExpansionTile(
                    title: FittedBox(fit: BoxFit.fitWidth,child: Text("PAYMENT",style: TextStyle(color: Colors.white))),
                    trailing: Icon(Icons.chevron_left,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Container(color: Colors.white,
                            child:Column(
                              children: <Widget>[
                                for (int i = 13; i < 20; i++)
                                  GestureDetector(
                                      onTap: (){indexChecked(i);},
                                      child: TextTab(_list[i],checkIndex == i)
                                  ),
                              ],
                            )
                        )
                      ])
                    ],
                  ),
                  ExpansionTile(
                    title: FittedBox(fit: BoxFit.fitWidth,child: Text("ADVANCED",style: TextStyle(color: Colors.white))),
                    trailing: Icon(Icons.chevron_left,color: Colors.white,),
                    //backgroundColor: Colors.yellow,
                    children: [
                      Column(children:[
                        Container(color: Colors.white,
                            child:Column(
                              children: <Widget>[
                                for (int i = 20; i < _list.length; i++)
                                  GestureDetector(
                                      onTap: (){indexChecked(i);},
                                      child: TextTab(_list[i],checkIndex == i)
                                  ),
                              ],
                            )
                        )
                      ])
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: _listScreens[checkIndex],
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
class TextTab extends StatelessWidget {
  String name;
  //GlobalKey globalKey;
  bool checked;
  TextTab(this.name,  this.checked);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25,
        padding: EdgeInsets.fromLTRB(10, 0, 5, 0) ,
        key: GlobalKey(),
        decoration: BoxDecoration(
          color: checked ? Color(0xffE52897) : Colors.white,
        ),
        child: Align(alignment: Alignment.centerLeft,
          child: Text(name,textAlign: TextAlign.left,style:
          TextStyle(color: checked ? Colors.white : Colors.black,fontSize: 10)),
        )
    );
  }
//quarterTurns: 3,
}
class PageGeneral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Text("GENERAL",style:TextStyle(fontSize:15,fontWeight: FontWeight.w700),),
          Text("RESTAURANT INFORMATION",style:TextStyle(color: Color(0xffE52897),fontSize:9,fontWeight: FontWeight.w500),),
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
          Divider(color: Color(0xffE52897),),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text("SCHEDULE INFORMATION",style: TextStyle(color: Color(0xffE52897),fontSize: 12),),
              )
            ],
          )
        ],
      ),
    );
  }
}
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    child: ListView(
      children: <Widget>[
        Text("PROFILE",style:TextStyle(fontSize:15,fontWeight: FontWeight.w700),),
      ],
    ),
  );
  }
}
class EndDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Profile"),
    );
  }
}
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(" MENU"),
    );
  }
}
class Modifiers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(" MENU"),
    );
  }
}