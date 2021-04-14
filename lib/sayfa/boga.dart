import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/sayfa/ikizler.dart';

class boga extends StatefulWidget{
  sayfa9 createState() => sayfa9();
}
class sayfa9 extends State<boga>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BOĞA",
            style: TextStyle(color: Colors.black),),
        ),

        body: Column(children: <Widget>[
          Text(
            "BOĞA BURÇ YORUMU",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),


          IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.deepPurple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("HOŞGELDİNİZ"),
                            Image.network(
                                "https://i.internethaber.com/storage/files/images/2019/08/05/boga-hNBN_cover.jpg")
                          ],
                        ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Boğa burcu olan kişiler hedefleri doğrultusunda ilerlerken tüm engelleri kararlı bir şekilde aşarlar."
                                " Yeteneklerini ön plana çıkaran boğa burçları maddecilikleri ile ön plana çıkarlar. "
                                "Bireysel ilişkilerde ise son derece sözlerine güvenilir kişiler olarak bilinmektedir. "
                                "Para kazanmayı seven boğa burçları bu kapsamda çok çalışarak maddi güce erişmek için gece gündüz çalışırlar."
                                " Bu yönleri ile çalışkanlıkları da ön plana çıkmış olur. Boğa burcu kişileri yatırım konusunda oldukça yetenekliler. "
                                "O nedenle doğru yatırımlarda bulunabilirler.  ",
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