import 'package:flutter/material.dart';
import 'package:proje/sayfa/akrep.dart';
import 'package:proje/sayfa/aslan.dart';
import 'package:proje/sayfa/balik.dart';
import 'package:proje/sayfa/basak.dart';
import 'package:proje/sayfa/boga.dart';
import 'package:proje/sayfa/ikizler.dart';
import 'package:proje/sayfa/koc.dart';
import 'package:proje/sayfa/kova.dart';
import 'package:proje/sayfa/oglak.dart';
import 'package:proje/sayfa/terazi.dart';
import 'package:proje/sayfa/yay.dart';
import 'package:proje/sayfa/yengec.dart';

class buton extends StatefulWidget {
  sayfa2 createState() => sayfa2();
}

class sayfa2 extends State<buton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
        appBar: AppBar(
          title: Text(
            "Burç seçimi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, children: <
              Widget>[
            Text("BURÇLAR SAYFASINA HOŞ GELDİNİZ LÜTFEN BURCUNUZU SEÇİN"),
            RaisedButton(
              child: Text("İKİZLER"),
              color: Colors.amberAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ikizler()),
                );
              },
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                RaisedButton(
                  child: Text("TERAZİ"),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => terazi()),
                    );
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("YAY"),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => yay()),
                        );
                      },
                    ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                              child: Text("BALIK"),
                              color: Colors.deepOrange,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => balik()),
                                );
                              },
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                RaisedButton(
                                  child: Text("KOVA"),
                                  color: Colors.pink,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => kova()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                RaisedButton(
                                  child: Text("OĞLAK"),
                                  color: Colors.yellow,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => oglak()),
                                    );
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    RaisedButton(
                                      child: Text("BOĞA"),
                                      color: Colors.deepPurple,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => boga()),
                                        );
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        RaisedButton(
                                          child: Text("AKREP"),
                                          color: Colors.red,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      akrep()),
                                            );
                                          },
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            RaisedButton(
                                              child: Text("YENGEÇ"),
                                              color: Colors.brown,
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          yengec()),
                                                );
                                              },
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                RaisedButton(
                                                  child: Text("KOÇ"),
                                                  color: Colors.teal,
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              koc()),
                                                    );
                                                  },
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    RaisedButton(
                                                      child: Text("ASLAN"),
                                                      color: Colors.black12,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      aslan()),
                                                        );
                                                      },
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        RaisedButton(
                                                          child: Text("BAŞAK"),
                                                          color:
                                                              Colors.amberAccent,
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          basak()),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ])
                        ],
                        ),
            ],
                    ),
    ]
    ),
    ),
    );


  }
}
