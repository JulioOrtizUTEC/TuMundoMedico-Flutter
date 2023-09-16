import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/acercade.dart';
import 'package:tumundomedico_flutter/src/perfil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil',
      home: Perfil(),
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

class PerfilClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil',
      home: Perfil(),
      );
  }
}