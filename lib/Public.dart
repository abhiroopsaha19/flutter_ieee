import 'dart:math';

import 'package:flutter/material.dart';



class EproSearch extends StatelessWidget {



  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(


        child: Column(
          children: <Widget>[



            new Container(
              padding:  EdgeInsets.only(left: 20.0, right: 20.0,top:30),


              child:new ButtonTheme(

                minWidth: 328,
                height: 40,
                child:new RaisedButton(
                  elevation: 5.0,
                  //borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xff2B276D),
                  padding:  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    // Do something here
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),

                    // side: BorderSide(color:Color(0xFF2B276D)),




                  ),
                  child:Text("Public Service Announcement on COVID-19",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              alignment: Alignment.center,
            ),




          ],
        ),
      ),
    );
  }
}
