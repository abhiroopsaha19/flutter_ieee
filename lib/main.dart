import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ieee/Public.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'RV-Aware';

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),

    );
  }
}

class MyHomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: new Text(title, style: TextStyle(color:Colors.black,fontSize:18.0)),
        centerTitle: true,
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.ondemand_video,size: 35.0,color:Colors.black,),
          )
        ],
      ),
//          title: Text(title, style: TextStyle(color:Colors.white)),

      // body: Center(child: Text('Find the nearest trails now',textAlign:TextAlign.start,style:TextStyle(height: 1, fontSize: 20,))),

      drawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[

            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color:Color(0xFF2B276D),
              ),
              accountName: new Text(
                "Abhiroop Saha",
                style: new TextStyle(color: Colors.white,
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              accountEmail: new Text(
                "abhiroopsaha19@gmail.com",
                style: new TextStyle(color: Colors.white,
                    fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
              ),),

            ListTile(
              title: Text('Utility'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Covid 19 tracker'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
            ListTile(
              title: Text('Covid 19 Fundraising'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: EproSearch(),

    );
  }



}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
//      home: new Text("Add Google fonts to Flutter App")
        home: new Scaffold(appBar: new AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          // backgroundColor: Color(0xFF2B276D),
          title: new Text("Tracker", style: TextStyle(color:Colors.black,fontSize:19.0)),
        ),

        )
    );
  }
}
