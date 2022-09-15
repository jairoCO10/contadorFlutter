import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
