import 'package:flutter/material.dart';
import 'package:untitled3/burc_item.dart';
import 'package:untitled3/modeller/burc.dart';
import 'package:untitled3/strings.dart';
class BurcListesi extends StatelessWidget {
  BurcListesi(){
    tumBurclar=verikaynaginihazirla();
  }
  List<Burc> tumBurclar=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('burç listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder:(context,index){
            return BurcItem(listenenenburc: tumBurclar[index]);
          },
          itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> verikaynaginihazirla() {
    List<Burc> gecici=[];
    for(int i=0;i<12;i++){
      var burcAdi=Strings.BURC_ADLARI[i];
      var burcTarih=Strings.BURC_TARIHLERI[i];
      var burcDetay=Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim=Strings.BURC_ADLARI[i].toLowerCase()+'${i+1}.png';
      var burcBuyukResim=Strings.BURC_ADLARI[i].toLowerCase()+'_buyuk'+'${i+1}.png';
      Burc eklenecekburc=Burc(burcAdi,burcTarih,burcDetay,burcKucukResim,burcBuyukResim);
      gecici.add(eklenecekburc);

    }
    return gecici;
  }
}
