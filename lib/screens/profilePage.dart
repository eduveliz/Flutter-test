import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget  {
  //final db = Firestore.instance;
  TextEditingController firstNameController;
  TextEditingController middleNameController;
  TextEditingController lastNameController;
  TextEditingController emailController;
  TextEditingController phoneController;
  TextEditingController addressController;
  TextEditingController cityController;
  TextEditingController stateController;
  TextEditingController zipCodeController;
  String id,firstName,lastName,middleName,email,phone,address,city,state,zipCode;

  final _formKey = GlobalKey<FormState>();
  void createData()async{print("aa");
    //await db.collection('user').add({"name":"jenny"});
    /*await db.collection('userData').add({
      'firstName':'$firstName',
      'lastName':'$lastName',
      'middleName':'$middleName',
      'email':'$email',
      'phone':'$phone',
      'address':'$address',
      'city':'$city',
      'state':'$state',
      'zipCode':'$zipCode'
    });*/
    print(email);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(//width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[Padding(padding: EdgeInsets.only(bottom: 10),child: Text("MY PROFILE",style:TextStyle(fontSize:15,fontWeight: FontWeight.w700)))],),
            Expanded(child: Row(//mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(flex: 1,
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(width: 140,height: 140,
                            decoration: BoxDecoration(border: Border.all(color:Color(0xffE52897))),
                            child: Stack(children: <Widget>[
                              Padding(padding:EdgeInsets.all(40),child:Icon(Icons.camera_alt) ),
                              Positioned(bottom: 0,
                                  child:MaterialButton(color: Color(0xffE52897),child: Text("UPLOAD PHOTO",style: TextStyle(color: Colors.white),),onPressed: (){}) )
                            ],
                            ),
                          ),
                          //SizedBox(width: 90,height: 90,),
                        ],
                      )),
                ),
                Expanded(flex:3,
                  child: Container(padding: EdgeInsets.only(left: 10),
                    child: ListView(children: <Widget>[
                      Text("INFORMATION",style: TextStyle(color: Color(0xffE52897),fontSize: 12,fontWeight: FontWeight.bold)),
                      Row(children: <Widget>[
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("FIRST NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'name' ,
                                        border: InputBorder.none
                                    ),
                                    onSaved: (value)=>firstName = value,
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("MIDDLE NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'middle name' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value) => middleName = value
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Row(children: <Widget>[
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("LAST NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>lastName = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("DATE OF BIRTH",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                    //onSaved: (value)=>firstName = value
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Divider(color: Color(0xffE52897)),
                      Text("CONTACT INFORMATION",style: TextStyle(color: Color(0xffE52897),fontSize: 12,fontWeight: FontWeight.bold)),
                      Row(children: <Widget>[
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("PERSONAL EMAIL",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>email = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("PHONE NUMBER",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>phone = value
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Divider(color: Color(0xffE52897)),
                      Text("ADDRESS",style: TextStyle(color: Color(0xffE52897),fontSize: 12,fontWeight: FontWeight.bold)),
                      Row(children: <Widget>[
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("ADDRESS",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>address = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("ADSRESS LINE 2",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      ]),
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
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'City' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>city = value
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
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'State' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>state = value
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
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'Zip code' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>zipCode = value
                                  ),
                                )
                              ],
                            )))
                      ]),
                      Divider(color: Color(0xffE52897)),
                      Text("PASSWORD",style: TextStyle(color: Color(0xffE52897),fontSize: 12,fontWeight: FontWeight.bold)),
                      Row(children: <Widget>[
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("CUURENT PASSWORD",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
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
                                Text("NEW PASSWORD",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'M' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: FlatButton(onPressed: (){createData();}, child: Text("SAVE"),color: Color(0xffE52897),textColor: Colors.white,
                              shape:RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10),
                              ))
                      )
                    ]),
                  ),
                )
              ],
            ))
          ],
        )
    );
  }
}