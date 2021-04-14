import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:proje/sayfa/akrep.dart';
import 'package:proje/sayfa/aslan.dart';
import 'package:proje/sayfa/balik.dart';
import 'package:proje/sayfa/basak.dart';
import 'package:proje/sayfa/boga.dart';
import 'package:proje/sayfa/burc_butonlar.dart';
import 'package:proje/sayfa/ikizler.dart';
import 'package:proje/sayfa/koc.dart';
import 'package:proje/sayfa/kova.dart';
import 'package:proje/sayfa/oglak.dart';
import 'package:proje/sayfa/terazi.dart';
import 'package:proje/sayfa/yay.dart';
import 'package:proje/sayfa/yengec.dart';

class fancy extends StatefulWidget {
  fancy1 createState() => fancy1();
}

class fancy1 extends State<fancy> {
  int currentPage = 0;
  GlobalKey alttarafkey = GlobalKey();
  TextEditingController ogo = TextEditingController();

  var mesaj = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          "HOŞGELDİNİZ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: _getPage(currentPage),
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.white,
        activeIconColor: Colors.black,
        inactiveIconColor: Colors.white,
        barBackgroundColor: Colors.lightGreenAccent,
        textColor: Colors.black,
        tabs: [
          TabData(
              iconData: Icons.lock_clock,
              title: "PROFİL",
              onclick: () {
                final FancyBottomNavigationState fState =
                    alttarafkey.currentState;
                fState.setPage(2);
              }),
          TabData(
            iconData: Icons.home,
            title: "BURÇLAR",
          ),
          TabData(iconData: Icons.details, title: "HAKKINDA")
        ],
        initialSelection: 1,
        key: alttarafkey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          RaisedButton(
            child: TextFormField(
              controller: ogo,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'isminiz',

              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            RaisedButton(
                child: Text('Bildirim gönder'),
                color: Colors.deepOrange,
                onPressed: () {
                  mesaj=ogo.text;
                  controller: ogo;
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Finali Bekleyin sayın ,$mesaj"),
                          ));
                }),
          ])
        ]);
      case 1:
        return Column(
          children: <Widget>[
            IntrinsicHeight(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                            "https://blog.sosyopix.com/wp-content/uploads/2020/10/burclar-haritasi.jpg")
                      ],
                    ),
                  ),
                ])),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("BURÇ YORUMLARI İÇİN TIKLAYINIZ"),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => buton()),
                    );
                  },
                ),
              ],
            ),
          ],
        );

      default:
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[100],
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "OĞUZHAN KARA",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "",
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006058 numaralı Oğuzhan KARA tarafından 30 Nisan 2021 günü yapılmıştır.",
              ),
            )
          ],
        );
    }
  }
}
