import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/sayfa/ikizler.dart';

class yengec extends StatefulWidget{
  sayfa12 createState() => sayfa12();
}
class sayfa12 extends State<yengec>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("YENGEÇ",
            style: TextStyle(color: Colors.black),),
        ),

        body: Column(children: <Widget>[
          Text(
            "YENGEÇ BURÇ YORUMU",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),


          IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.brown,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("HOŞGELDİNİZ"),
                            Image.network(
                                "https://i.internethaber.com/storage/files/images/2019/08/05/yengec-tTA5_cover.jpg")
                          ],
                        ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Yengeç burcu olan kişiler genel olarak hayatlarındaki her konuda aşırı derecede alıngan,"
                                " hassas ve de kuruntulu olan kişilerdir. Sorumluluk duyguları da oldukça çok gelişmiş olmaktadır."
                                " Yengeç burcu olan kişiler duygusallıkları ve de duyarlılıkları ile tanınırlar."
                                " Ayrıca bu kişiler genel manada çevresinde yer alan her insandan hassasiyeti beklerler."
                                " İyi günlerinde neşeli, mutlu, iyi kalpli, yardımsever, çok düşünceli ve de anlayışlı kişiler olmaktadırlar."
                                " Fakat herhangi belirli bir neden olmadan da somurtkan ve de alıngan olabilirler.",
                          ),
                        ]
                    ),
                  ]

              )

          )

        ])
    );
  }
}