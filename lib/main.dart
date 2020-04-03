import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ieee/Public.dart';
import 'package:url_launcher/url_launcher.dart';




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
        elevation: 1.2,
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
            child:new IconButton(
            icon: new Icon(Icons.ondemand_video,size: 35.0,color:Colors.black),
              onPressed: _launchURL,


            ),

          )
        ],
      ),
//          title: Text(title, style: TextStyle(color:Colors.white)),
      //bottomNavigationBar: BottomNavigationBar(),
      body: ListView(
        padding: EdgeInsets.all(20.00),
        children: <Widget>[
        Text('PUBLIC SERVICE ANNOUNCEMENTS',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 15.00, fontWeight: FontWeight.bold),),

          Card(margin: EdgeInsets.all(20.00), child: Column(children: <Widget>[
            Padding(padding: EdgeInsets.all(10.00),
                 child: Text('SYMPTOMS : ', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.all(20.00),
                      child: Image.asset('assets/symptoms.png')),
            Padding(padding: EdgeInsets.all(10.00),
                child : Text('1. Fever.', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold),)),
            Padding(padding: EdgeInsets.all(10.00),
                child: Text('2. Tiredness.', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold),)),
            Padding(padding: EdgeInsets.all(10.00),
                child: Text('3. Cold and Cough.', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold))),
            Padding(padding : EdgeInsets.all(10.00),
                child: Text('4. Difficulty in Breathing.', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold)))],)),
          Card(margin: EdgeInsets.all(20.00), child: Column(children: <Widget>[
            Padding(padding: EdgeInsets.all(10.00),
                child: Text('WHAT SHOULD YOU DO ?', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.all(20.00),
                child: Row(children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 60.00, top: 20.00, right: 10.00, bottom: 20.00),
                      child: Image.asset('assets/washhands.png')),
                  Padding(padding: EdgeInsets.all(20.00),
                      child: Image.asset('assets/distance.png'))])),
            Padding(padding: EdgeInsets.all(10.00),
                child : Text('1. Wash your Hands Frequently. Regularly and thoroughly clean your hands with an Alcohol Based HandRub or Soap and Water.', style: TextStyle(color: Colors.indigo, fontSize: 15.00),)),
            Padding(padding: EdgeInsets.all(10.00),
                child: Text('2. Maintain Social Distancing. Aleast one to three Meters of Distance between yourself and anyone who is coughing or sneezing.', style: TextStyle(color: Colors.indigo, fontSize: 15.00),)),
            Padding(padding: EdgeInsets.all(10.00),
                child: Text('3. Avoid Touching Eyes, Nose and Mouth.', style: TextStyle(color: Colors.indigo, fontSize: 15.00))),
            Padding(padding : EdgeInsets.all(10.00),
                child: Text('4. If you have fever, cough and difficulty breathing, seek medical care early.', style: TextStyle(color: Colors.indigo, fontSize: 15.00)))],)),
          Card(margin: EdgeInsets.all(20.00), child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(10.00),
            child: Text('WHEN SHOULD YOU USE MASK ?', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold))),
          Padding(padding: EdgeInsets.all(20.00),
              child: Row(children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60.00, top: 20.00, right: 10.00, bottom: 20.00),
                    child: Image.asset('assets/sick.png')),

                Padding(padding: EdgeInsets.all(20.00),
                    child: Image.asset('assets/wearmask.png'))])),
          Padding(padding: EdgeInsets.all(10.00),
            child : Text('1. For Healthy people wear a mask only if you are taking care of a person with suspected 2019 nCOV Infection.', style: TextStyle(color: Colors.indigo, fontSize: 15.00),)),
          Padding(padding: EdgeInsets.all(10.00),
              child: Text('2. Wear a mask, if you are coughing or sneezing.', style: TextStyle(color: Colors.indigo, fontSize: 15.00))),
          Padding(padding: EdgeInsets.all(10.00),
            child: Text('3. Masks are effective only when used in combination with frequent hand cleaning with alcohol-based hand rub or soap and water.', style: TextStyle(color: Colors.indigo, fontSize: 15.00))),
          Padding(padding : EdgeInsets.all(10.00),
          child: Text('4. If you are wearing a mask then you must know how to use it and dispose of it properly.', style: TextStyle(color: Colors.indigo, fontSize: 15.00)))],)),
        Card(margin: EdgeInsets.all(20.00), child : Padding(padding: EdgeInsets.all(10.00),
            child: Text('CoronaVirus Disease(COVID - 2019) advice for the public: Myth Busters', style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00, fontWeight: FontWeight.bold),))),
          Padding(
            padding: EdgeInsets.all(20.00),
            child: Text('Learn More about COVID-19 by clicking Below', style: TextStyle(color: Colors.grey, fontSize: 13.00)),
          ),
          GestureDetector(
            onTap: openUrlM,
          child: Padding(
            padding: EdgeInsets.all(10.00),
            child: Text('- World Health Organisation(WHO).', style: TextStyle(color: Color(0xFF2B276D), fontSize: 13.00, fontWeight: FontWeight.bold)),
          )),
          GestureDetector(
              onTap: openUrl,
              child:Padding(
            padding: EdgeInsets.all(10.00),
            child: Text('- Ministry of Health and Family Welfare of India.', style: TextStyle(color: Color(0xFF2B276D), fontSize: 13.00, fontWeight: FontWeight.bold)),
          ))]),

      // body: Center(child: Text('Find the nearest trails now',textAlign:TextAlign.start,style:TextStyle(height: 1, fontSize: 20,))),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                  icon: Icon(Icons.announcement,color:Colors.blue,),
                  onPressed: null
              ),
              new IconButton(
                  icon: Icon(Icons.payment,color:Colors.red),
                  onPressed: null
              ),
              new IconButton(
                  icon: Icon(Icons.track_changes,color:Colors.green),
                  onPressed: null
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
          child: Container(
              color: Color(0xFF2B276D) ,
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
              title: Text('Utility', style: TextStyle(color: Colors.white),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Covid 19 tracker', style: TextStyle(color: Colors.white),),
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
              title: Text('Covid 19 Fundraising', style: TextStyle(color: Colors.white),),
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

    ));
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

_launchURL() async {
  const url = 'https://www.youtube.com/channel/UC07-dOwgza1IguKA86jqxNA';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  openUrlM() async {
    const url = 'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
    openUrl() async {
      const url = 'https://www.mohfw.gov.in/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }