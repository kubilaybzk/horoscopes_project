import 'package:flutter/material.dart';

import 'model/burc.dart';

/*

Biz burca tıklaınca tıklanan burcun geniş bilgilerini görmek istiyoruz
o zaman amacımız şöyle olmalı.

  ilk olarak
        verilen bilgilere  burada ulaşabilmemiz gerekiyor
          O zaman burada oluşan Widget için bizim bilgileri aktarmamız lazım
              Bilgileri tek tek aktarmak yerine bilgileri buraya obje olarak 
              aktarmak daha mantıklı O zaman 
*/

class details_horoscopes extends StatelessWidget {
  final Burc gelen_bilgi;

  const details_horoscopes({required this.gelen_bilgi, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(gelen_bilgi.burcAdi + "Hakkında bilgiler"),
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + gelen_bilgi.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            //CustomScrollView sadece sliver bilgiler ister başka
            //Widgetlar kullanmak istiyorsak bunu kullanabiliriz.
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
                  child: Text(gelen_bilgi.burcDetayi),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
