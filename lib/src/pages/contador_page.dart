import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloContador =
      const TextStyle(fontSize: 30, color: Color.fromARGB(121, 248, 57, 4));
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CONTADOR'),
          centerTitle: true,
          elevation: 10.5,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Numero de clicks:', style: TextStyle(fontSize: 30)),
            Text('$_conteo', style: _estiloContador)
          ],
        )),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        const SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            onPressed: _reset, child: const Icon(Icons.exposure_zero)),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _sustraer, child: const Icon(Icons.remove)),
        const SizedBox(
          width: 15.0,
        ),
        FloatingActionButton(onPressed: _agregar, child: const Icon(Icons.add)),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
