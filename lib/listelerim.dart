import 'package:flutter/material.dart';
import 'data/strings.dart';
import 'detail.dart';
import 'model/burc.dart';

class Listelerim extends StatelessWidget {
  late List<Burc> tumBurclar;

  Listelerim() {
    //Burası bizim widget değerimizin kurucu değeri.
    /*
      Burası ilk oluşan elemanlarımız oluyor
      Şimdi burada widget oluşurken listemiz oluşmalı bunun için söyle bir şey yapabiliriz
     */
    /*
    tumBurclar=[];
      Burada kurucu method çalışır çalışmaz ne yapılacağı
      belirtiyoruz.
      Biz istiyoruz ki kurucu method her çalıştığında verileri
      import edilmiş olsun o zaman söyle yapabiliriz:
    */

    tumBurclar = veriekle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
          child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(3),
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  "images/" + tumBurclar[index].burcKucukResim,
                ),
                title: Text(tumBurclar[index].burcAdi),
                subtitle: Text(tumBurclar[index].burcTarihi),
                trailing: Icon(Icons.arrow_right_outlined),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          details_horoscopes(gelen_bilgi: tumBurclar[index])));
                },
              ),
            ),
          );
        },
        itemCount: tumBurclar.length,
      )),
    );
  }

  List<Burc> veriekle() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png',
          Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png');
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
