import 'package:flutter/material.dart';
import 'package:rivas/pagina1.dart';
import 'package:rivas/pagina2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas nombradas',

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the pantalla1 widget.
        '/': (context) => const Pagina1(),
        // When navigating to the "/second" route, build the Pagina2 widget.
        '/second': (context) => const Pagina2(),
      }, //navegacion entre rutas entre paginas
    ),
  ); //runApp
} //main
