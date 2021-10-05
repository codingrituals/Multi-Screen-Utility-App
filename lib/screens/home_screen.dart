import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _gradientColor = [
    [Colors.tealAccent, Colors.indigo.shade900],
    [Colors.red.shade800, Colors.indigo.shade900],
    [Colors.lightGreenAccent, Colors.indigo.shade900],
    [Colors.orange.shade300, Colors.indigo.shade900],
    [Colors.green, Colors.indigo.shade900]
  ];

  List _cardNames = [
    'CONTACT\nBACKUP',
    'MEDIA\nCLEANER',
    'RECENT\nAPPS',
    'FAVOURITE\nCONTACTS',
    'POWER\nSAVER',
  ];
  List _icons = [
    FaIcon(
      FontAwesomeIcons.database,
      color: Colors.teal.withOpacity(0.8),
      size: 30,
    ),
    FaIcon(
      FontAwesomeIcons.photoVideo,
      color: Colors.teal.withOpacity(0.8),
      size: 30,
    ),
    FaIcon(
      FontAwesomeIcons.history,
      color: Colors.teal.withOpacity(0.8),
      size: 30,
    ),
    FaIcon(
      FontAwesomeIcons.star,
      color: Colors.teal.withOpacity(0.8),
      size: 30,
    ),
    FaIcon(
      FontAwesomeIcons.batteryEmpty,
      color: Colors.teal.withOpacity(0.8),
      size: 30,
    ),
  ];
  List _statsButtonName = ['Battery', 'Security', 'Memory'];
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      endDrawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(color: Colors.black87),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Application\nStatus',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.black87,
              title: Text(
                'Updated Apps',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: FaIcon(
                FontAwesomeIcons.check,
                color: Colors.white38,
              ),
            ),
            ListTile(
              tileColor: Colors.black87,
              title: Text(
                'Update Pending',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              leading: FaIcon(
                FontAwesomeIcons.exclamationCircle,
                color: Colors.white38,
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Update Apps',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/user1.jpg'),
                  radius: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'DASHBOARD\n',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      TextSpan(
                        text: '- PROTECTION LEVEL ',
                        style: TextStyle(
                          color: Color.fromRGBO(88, 93, 104, 1),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: 'GOOD',
                        style: TextStyle(
                          color: Colors.orange[700],
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  tooltip: 'Drawer',
                  onPressed: () {
                    _key.currentState!.openEndDrawer();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.angleDoubleLeft,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.box,
                      size: 35,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'TOOLS',
                        style: TextStyle(
                          color: Colors.grey[350],
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'SLIDE RIGTH TO\n VIEWS TOOLS',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(88, 93, 104, 1),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 255,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _cardNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                              colors: _gradientColor[index],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 0,
                              color: Colors.white.withOpacity(0.3),
                            )
                          ],
                          color: Colors.transparent,
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              width: 1,
                              color: Colors.transparent,
                            ),
                            vertical: BorderSide(
                              width: 1,
                              color: Colors.transparent,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, bottom: 20),
                        child: Text(
                          _cardNames[index],
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 50, bottom: 155),
                        height: 100,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.75),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Colors.white.withOpacity(0.3),
                            )
                          ],
                        ),
                        child: _icons[index],
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.orangeAccent.shade100,
                    Colors.grey.shade800,
                    Colors.black87.withOpacity(0.5),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              height: 75,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: FaIcon(
                      FontAwesomeIcons.crown,
                      size: 30,
                      color: Colors.grey[850],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'TRY PREMIUM',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -2,
                              ),
                            ),
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: Colors.orange.shade400,
                                  fontSize: 25,
                                  fontFamily: 'Montserrat',
                                )),
                          ]),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 15,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade400,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                'FOR FREE',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'ONE WEEK TRIAL',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                letterSpacing: -1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.white,
                        size: 30,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.box,
                      size: 35,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'STATS',
                        style: TextStyle(
                          color: Colors.grey[350],
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'CHOOSE\nCATEGORY',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color.fromRGBO(88, 93, 104, 1),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _statsButtonName.length,
                itemBuilder: (BuildContext context, int _index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            autofocus: true,
                            onPressed: () {},
                            child: Text(
                              _statsButtonName[_index],
                              style: TextStyle(
                                color: Colors.white60,
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                              ),
                            )),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
