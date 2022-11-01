import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(BenimUygulamam());
}
class BenimUygulamam extends StatelessWidget {

  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(centerTitle: true, title:Text('BUGUN NE YESEM',style: TextStyle(color: Colors.black,),
        ),
          backgroundColor: Colors.white,),
        body: YemekSayfasi(),
        ),
      );

  }
}
class YemekSayfasi extends StatefulWidget {

  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String>corbaAdlari=['mercimek corbasi','Tarhana','Tavuk Suyu','Dugun','Yogurtlu'];
  List<String>yemekAdlari=['Karnıyarık','Mantı','Kuru Fasulye','İçli Köfte','Izgara Balık'];
  List<String>tatliAdlari=['Kadayıf','Baklava','Sütlaç','Kazandibi','Dondurma'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(onPressed: () {
              yeniFonk();
              print("corba butonuna tıkladınız");
            },
                highlightColor: Colors.white,
                splashColor: Colors.white,
                child: Image.asset('assets/images/corba_$corbaNo.jpg')),
          ),),
          Text(
            corbaAdlari[corbaNo-1],
            style: TextStyle(fontSize: 20,),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 10,color: Colors.black,
            ),
          ),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              splashColor: Colors.white, highlightColor: Colors.white,
              onPressed:
                yeniFonk,



              child: Image.asset('assets/images/yemek_$yemekNo.jpg'),

            ),
          ),
          ),
          Text(yemekAdlari[yemekNo-1]),
          Container(
            width: 200,
            child: Divider(
              height: 20,color: Colors.black),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(onPressed: () {
              yeniFonk();
              print("tatli butonuna tıkladınız");
            },
                highlightColor: Colors.white,
                splashColor: Colors.white,
                child: Image.asset('assets/images/tatli_$tatliNo.jpg')),
          ),
          ),
          Text(tatliAdlari[tatliNo-1]),
          Divider(height: 20,color: Colors.black,),
        ],

      ),
    );
  }

  void yeniFonk() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

}
