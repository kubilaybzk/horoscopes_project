import 'package:flutter/material.dart';
import 'package:horoscopes_project/listelerim.dart';

main() {
  runApp(burcproject());
}

class burcproject extends StatelessWidget {
  const burcproject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(accentColor: Colors.black, primaryColor: Colors.yellow),
        home: Listelerim());
  }
}
