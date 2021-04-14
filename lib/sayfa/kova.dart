import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje/sayfa/ikizler.dart';

class kova extends StatefulWidget{
  sayfa6 createState() => sayfa6();
}
class sayfa6 extends State<kova>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KOVA",
            style: TextStyle(color: Colors.black),),
        ),

        body: Column(children: <Widget>[
          Text(
            "KOVA BURÇ YORUMU",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),


          IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("HOŞGELDİNİZ"),
                            Image.network(
                                "https://i2.cnnturk.com/i/cnnturk/75/800x400/5f5f4cd117aca90784d74d3f")
                          ],
                        ),
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " Özgürlüğüne düşkün olan kovaların sınırsız bir hayal güçleri vardır. "
                                "Akılcı ve sezgisel olan kovalar, hayal güçleri ile birlikte"
                                " bilim ve sanat alanlarında oldukça başarılı projelere imza atarlar."
                                " Bazen dik kafalı tavırları ile insanları kızdırsalar da bildiklerinden şaşmayan yapıları ile "
                                "şaşırtıcı sonuçlara ulaştıkları göz ardı edilemez. Kova burçları yardımsever, güler yüzlü ve sevgi dolu insanlardır. İnsanlar arasında ayrım yapmazlar herkesin aynı yaşam standartlarına sahip olmalarını isterler."
                                " İyi niyetli kovalar bazen inatçı davranırlar. Özgür ruhlarından ötürü aile yaşamında zorlanırlar. ",
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