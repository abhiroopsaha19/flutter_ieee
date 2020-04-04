import 'dart:convert';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ieee/Public.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

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
          title: new Text(title,
              style: TextStyle(color: Colors.black, fontSize: 18.0)),
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
              child: new IconButton(
                icon: new Icon(Icons.ondemand_video,
                    size: 35.0, color: Colors.black),
                onPressed: _launchURL,
              ),
            )
          ],
        ),
//          title: Text(title, style: TextStyle(color:Colors.white)),
        //bottomNavigationBar: BottomNavigationBar(),
        body: ListView(padding: EdgeInsets.all(20.00), children: <Widget>[
          Text(
            'PUBLIC SERVICE ANNOUNCEMENTS',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.00,
                fontWeight: FontWeight.bold),
          ),
          Card(
              margin: EdgeInsets.all(20.00),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('SYMPTOMS : ',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.all(20.00),
                      child: Image.asset('assets/sick-2.png')),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                        '1. Fever.',
                        style: TextStyle(
                            color: Color(0xFF2B276D),
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                        '2. Tiredness.',
                        style: TextStyle(
                            color: Color(0xFF2B276D),
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('3. Cold and Cough.',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('4. Difficulty in Breathing.',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold)))
                ],
              )),
          Card(
              margin: EdgeInsets.all(20.00),
              child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('WHAT YOU SHOULD DO ?',
                        style: TextStyle(
                            color: Color(0xFF2B276D),
                            fontSize: 15.00,
                            fontWeight: FontWeight.bold))),
                Padding(
                    padding: EdgeInsets.only(
                        left: 80, top: 20, bottom: 20, right: 20),
                    child: Row(children: <Widget>[
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Image.asset('assets/washhands.png')),
                        Text(
                          '',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 15.00),
                        )
                      ]),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(40.00),
                            child: Image.asset('assets/distance.png')),
                        Text(
                          '',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 15.00),
                        )
                      ])
                    ])),
                Padding(
                    padding: EdgeInsets.only(
                        left: 80, top: 20, right: 20, bottom: 20),
                    child: Row(children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Image.asset('assets/washhands.png')),
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.indigo, fontSize: 15.00),
                          )
                        ],
                      ),
                      Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(40.00),
                            child: Image.asset('assets/distance.png')),
                        Text(
                          '',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 15.00),
                        )
                      ]),
                    ]))
              ])),
          // TODO WRITE ALL THE TEXT FOR EACH IMAGE AND ADD APPROPRIATE IMAGE. ALL IMAGES ARE PRESENT IN THE ASSETS FOLDER.
          Card(
              margin: EdgeInsets.all(20.00),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('WHEN SHOULD YOU USE MASK ?',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold))),
                  Padding(
                      padding: EdgeInsets.all(20.00),
                      child: Row(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(
                                left: 60.00,
                                top: 20.00,
                                right: 10.00,
                                bottom: 20.00),
                            child: Image.asset('assets/sick.png')),
                        Padding(
                            padding: EdgeInsets.all(20.00),
                            child: Image.asset('assets/wearmask.png'))
                      ])),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                        '1. For Healthy people wear a mask only if you are taking care of a person with suspected 2019 nCOV Infection.',
                        style: TextStyle(color: Colors.indigo, fontSize: 15.00),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                          '2. Wear a mask, if you are coughing or sneezing.',
                          style: TextStyle(
                              color: Colors.indigo, fontSize: 15.00))),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                          '3. Masks are effective only when used in combination with frequent hand cleaning with alcohol-based hand rub or soap and water.',
                          style: TextStyle(
                              color: Colors.indigo, fontSize: 15.00))),
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                          '4. If you are wearing a mask then you must know how to use it and dispose of it properly.',
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 15.00)))
                ],
              )),
          Card(
              margin: EdgeInsets.all(20.00),
              child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text(
                    'CoronaVirus Disease(COVID - 2019) advice for the public: Myth Busters',
                    style: TextStyle(
                        color: Color(0xFF2B276D),
                        fontSize: 15.00,
                        fontWeight: FontWeight.bold),
                  ))),
          Padding(
              padding: EdgeInsets.all(20.00),
              child: Row(children: <Widget>[
                Image.asset('assets/call.png'),
                Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('COVID - 19 Helpline',
                        style: TextStyle(
                            color: Color(0xFF2B276D),
                            fontSize: 20.00,
                            fontWeight: FontWeight.bold)))
              ])),
          Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                'Central Helpline Number : +91-11-23978046',
                style: TextStyle(color: Color(0xFF2B276D)),
              )),
          Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                'Karnataka Helpline Number : 104',
                style: TextStyle(color: Color(0xFF2B276D)),
              )),
          Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                'COVID-19 Whatsapp HelpDesk',
                style: TextStyle(color: Color(0xFF2B276D)),
              )),
          Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                'Toll Free - 1075',
                style: TextStyle(color: Color(0xFF2B276D)),
              )),
          Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                'HelpLine Email - ncov2019@gov.in',
                style: TextStyle(color: Color(0xFF2B276D)),
              )),
          Padding(
            padding: EdgeInsets.all(20.00),
            child: Text('Learn More about COVID-19 by clicking Below',
                style: TextStyle(color: Colors.grey, fontSize: 13.00)),
          ),
          GestureDetector(
              onTap: openUrl,
              child: Padding(
                padding: EdgeInsets.all(10.00),
                child: Text('- World Health Organisation(WHO).',
                    style: TextStyle(
                        color: Color(0xFF2B276D),
                        fontSize: 13.00,
                        fontWeight: FontWeight.bold)),
              )),
          GestureDetector(
              onTap: openUrlM,
              child: Padding(
                padding: EdgeInsets.all(10.00),
                child: Text('- Ministry of Health and Family Welfare of India.',
                    style: TextStyle(
                        color: Color(0xFF2B276D),
                        fontSize: 13.00,
                        fontWeight: FontWeight.bold)),
              )),
        ]),

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
                    icon: Icon(
                      Icons.announcement,
                      color: Colors.blue,
                    ),
                    onPressed: null),
                new IconButton(
                    icon: Icon(Icons.payment, color: Colors.red),
                    onPressed: null),
                new IconButton(
                    icon: Icon(Icons.track_changes, color: Colors.green),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FifthRoute()),
                      );
                    })
              ],
            ),
          ),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Container(
            color: Color(0xFF2B276D),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF2B276D),
                  ),
                  accountName: new Text(
                    "RV-Aware",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                  accountEmail: new Text(
                    "Everything about COVID-19",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Symptoms',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'What you should do?',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                  },
                ),
                ListTile(
                  title: Text(
                    'Helpline',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Work from Home',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
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
                  title: Text(
                    'Parental Guidance',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthRoute()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'COVID-19 Donation',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'World Health Organisation',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    openUrl();
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Ministry of Health and Family Welfare',
                    style: TextStyle(color: Colors.white, fontSize: 15.00),
                  ),
                  onTap: () {
                    openUrlM();
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
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: new Text(
                "Work From Home",
                style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00),
              ),
            ),
            body: ListView(children: <Widget>[
              Card(
                margin: EdgeInsets.all(20.00),
                child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                ),
              ),
              // TODO write the work from home guideline.
              Card(
                margin: EdgeInsets.all(20.00),
                child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                ),
              ),
              // TODO write the work from home guideline.
              Card(
                margin: EdgeInsets.all(20.00),
                child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                ),
              ),
              // TODO write the work from home guideline.
              Card(
                margin: EdgeInsets.all(20.00),
                child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                ),
              ),
              // TODO write the work from home guideline.
              Card(
                margin: EdgeInsets.all(20.00),
                child: Padding(
                  padding: EdgeInsets.all(10.00),
                  child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                ),
              )
              // TODO write the work from home guideline.
            ])));
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
//      home: new Text("Add Google fonts to Flutter App")
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: new Text(
                "Donate For COVID-19",
                style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00),
              ),
            ),
            body: ListView(children: <Widget>[
              GestureDetector(
                  onTap: openUrlS,
                  child: Card(
                    margin: EdgeInsets.all(20.00),
                    child: Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text(
                          'Click Here to go to the website pmindia.gov.in and donate to PM CARES Fund.',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold)),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(30.00),
                child: Text(
                    'With the primary objective of dealing with any kind of emergency or distress situation, like posed by the COVID-19 (Coronavirus) pandemic, and to provide relief to the affected, a public charitable trust under the name of ‘Prime Minister’s Citizen Assistance and Relief in Emergency Situations (PM CARES) Fund’ has been set up.',
                    style: TextStyle(color: Colors.grey)),
              ),
              Card(
                margin: EdgeInsets.all(20.00),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Name of the Account:	PM CARES',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Account Number:	2121PM20202',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('IFSC Code:	SBIN0000691',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('SWIFT Code:	SBININBB104',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Bank and Branch:	SBI, New Delhi Main Branch',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('UPI ID:	pmcares@sbi',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Click below to pay through these Portals :',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  GestureDetector(
                      onTap: openBHIM,
                      child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text('PHONEPE',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20.00,
                                fontWeight: FontWeight.bold)),
                      )),
                  GestureDetector(
                      onTap: openG,
                      child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text('GPAY',
                            style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 20.00,
                                fontWeight: FontWeight.bold)),
                      )),
                ]),
              ),
            ])));
  }
}

class FourthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
//      home: new Text("Add Google fonts to Flutter App")
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: new Text(
                "Tackle CoronaVirus with Good Parenting",
                style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00),
              ),
            ),
            body: ListView(children: <Widget>[
              GestureDetector(
                  onTap: openUrlS,
                  child: Card(
                    margin: EdgeInsets.all(20.00),
                    child: Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold)),
                    ),
                  )),
              Card(
                margin: EdgeInsets.all(20.00),
                child: Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                ]),
              ),
            ])));
  }
}

class FifthRoute extends StatefulWidget {
  FifthRoute({Key key}) : super(key: key);

  @override
  _fifthRouteState createState() => _fifthRouteState();
}

class _fifthRouteState extends State<FifthRoute> {
  Future<COVID> futureCOVID;
  @override
  void initState() {
    super.initState();
    futureCOVID = _makeGetRequest();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "",
//      home: new Text("Add Google fonts to Flutter App")
        home: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: new Text(
                "COVID-19 Statistics",
                style: TextStyle(color: Color(0xFF2B276D), fontSize: 15.00),
              ),
            ),
            body: ListView(children: <Widget>[
              GestureDetector(
                  onTap: openUrlS,
                  child: Card(
                    margin: EdgeInsets.all(20.00),
                    child: Padding(
                      padding: EdgeInsets.all(10.00),
                      child: Text('',
                          style: TextStyle(
                              color: Color(0xFF2B276D),
                              fontSize: 15.00,
                              fontWeight: FontWeight.bold)),
                    ),
                  )),
              Card(
                margin: EdgeInsets.all(20.00),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.00),
                      child: FutureBuilder<COVID>(
                          future: futureCOVID,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              print(snapshot.data.totalCases);
                              return Text(snapshot.data.totalCases);
                            }
                            return CircularProgressIndicator();
                          })),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Recovered: ',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Deceased: ',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('Mortality Rate: ',
                        style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                  Padding(
                    padding: EdgeInsets.all(10.00),
                    child: Text('', style: TextStyle(color: Color(0xFF2B276D))),
                  ),
                  // TODO write parental Guidance
                ]),
              ),
            ])));
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
  const url = 'https://www.mohfw.gov.in/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openUrl() async {
  const url =
      'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openUrlS() async {
  const url = 'https://www.pmindia.gov.in/en/?query';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openBHIM() async {
  const url = 'https://phon.pe/i4india';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openG() async {
  const url = 'https://gpay.app.goo.gl/ijN214';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<COVID> _makeGetRequest() async {
  String url = 'https://api.rootnet.in/covid19-in/stats/latest';
  final response = await http.get(url);
  // sample info available in response
  int statusCode = response.statusCode;
  if (statusCode == 200) {
    print(json.decode(response.body));
    return COVID.fromJson(json.decode(response.body));
  }
}

class COVID {
  final String totalCases;

  COVID({this.totalCases});

  factory COVID.fromJson(Map<String, dynamic> json) {
    return COVID(totalCases: json['summary']);
  }
}

class Source {
  String totalCases;
  String recovered;
  String deceased;

  Source({this.totalCases, this.recovered, this.deceased});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
        totalCases: json["total"] as String,
        recovered: json["discharged"] as String,
        deceased: json["deaths"]);
  }
}
