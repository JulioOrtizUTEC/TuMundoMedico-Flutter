import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/acercade.dart';
import 'package:tumundomedico_flutter/src/inicio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Login(),
      );
  }
}

class AcercaDeClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Acerca De',
      home: AcercaDe(),
      );
  }
}
  class InicioClass extends StatelessWidget{
  const InicioClass({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio',
      home: Inicio(),
      );
  }
}