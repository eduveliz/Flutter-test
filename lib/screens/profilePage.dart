import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget  {
  final db = Firestore.instance;

  TextEditingController firstNameController =  TextEditingController();
  TextEditingController middleNameController =  TextEditingController();
  TextEditingController lastNameController =  TextEditingController();
  TextEditingController emailController =  TextEditingController();
  TextEditingController phoneController =  TextEditingController();
  TextEditingController addressController =  TextEditingController();
  TextEditingController address2Controller =  TextEditingController();
  TextEditingController cityController =  TextEditingController();
  TextEditingController stateController =  TextEditingController();
  TextEditingController zipCodeController =  TextEditingController();
  String id,firstName,lastName,middleName,email,phone,address,city,state,zipCode;

  final _formKey = GlobalKey<FormState>();
  void createData()async{
    await db.collection("user").add({"name":"jenny"});
    await db.collection('userData').add({
      'firstName':firstNameController.text,
      'lastName':lastNameController.text,
      'middleName':middleNameController.text,
      'email':emailController.text,
      'phone':phoneController.text,
      'address':addressController.text,
      'city':cityController.text,
      'state':stateController.text,
      'zipCode':zipCodeController.text
    });
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
                          Wrap(direction: Axis.vertical,
                            children: <Widget>[
                              Container(width: 140,height: 100,
                                decoration: BoxDecoration(border: Border.all(color:Color(0xffE52897))),
                                child:Padding(padding:EdgeInsets.all(40),child:Icon(Icons.camera_alt) )),
                              Container(
                                width: 140,height: 35,
                                child: MaterialButton(color: Color(0xffE52897),
                                    child: Text("UPLOAD PHOTO",
                                        style: TextStyle(color: Colors.white,fontSize: 13)),
                                    onPressed: (){showCustomDialog(context);}),
                              )
                          ])
                          //SizedBox(width: 90,height: 90,),
                        ],
                      )
                  ),
                ),
                Expanded(flex:3,
                  child: Container(padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(children: <Widget>[
                      Text("INFORMATION",style: TextStyle(color: Color(0xffE52897),fontSize: 12,fontWeight: FontWeight.bold)),
                      Row(children: <Widget>[
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("FIRST NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: firstNameController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'name' ,
                                        border: InputBorder.none
                                    ),
                                    //onSaved: (value){print("!!!!!");print(value);}
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("MIDDLE NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: middleNameController,
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
                          Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("LAST NAME",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: lastNameController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'last name' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>lastName = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("DATE OF BIRTH",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
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
                        Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("PERSONAL EMAIL",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: emailController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'email' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>email = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("PHONE NUMBER",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: phoneController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'phone' ,
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
                        Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("ADDRESS",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: addressController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'address' ,
                                        border: InputBorder.none
                                    ),
                                      onSaved: (value)=>address = value
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("ADDRESS LINE 2",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: address2Controller,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'address 2' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Row(children: <Widget>[
                        Expanded(child:
                        Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("CITY",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: cityController,
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
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: stateController,
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
                        Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("ZIP CODE",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    controller: zipCodeController,
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
                        Container(margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("CURRENT PASSWORD",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding:EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'******' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                        Expanded(child:
                          Container(margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                            child: Wrap(
                              children: <Widget>[
                                Text("NEW PASSWORD",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                Container(
                                  //margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[300]),
                                      borderRadius: BorderRadius.circular(18)
                                  ),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                        hintText:'password' ,
                                        border: InputBorder.none
                                    ),
                                  ),
                                )
                              ],
                            ))),
                      ]),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: FlatButton(onPressed: (){createData();},
                              child: Text("SAVE"),color: Color(0xffE52897),textColor: Colors.white,
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

  void showCustomDialog(BuildContext context){
    Dialog fancyDialog = Dialog(
      child: Container(
        height: 400.0,
        width: 500.0,
        child: Column(mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey[700]),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(border: Border.all(),
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              width: double.maxFinite,
              height: 290,
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
              child:Column(
                children: <Widget>[
                  Row(children: <Widget>[Text(" UPLOAD PHOTO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)],)
                ],
              )
            ),
          ],
        )
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => fancyDialog);
  }
}