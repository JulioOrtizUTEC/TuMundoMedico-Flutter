import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/acercade.dart';
import 'package:tumundomedico_flutter/src/medicos.dart';
import 'package:tumundomedico_flutter/src/menu.dart';
import 'package:tumundomedico_flutter/src/perfil.dart';
import 'package:tumundomedico_flutter/src/recuperaContra.dart';
import 'package:tumundomedico_flutter/src/recuperaContraVerificar.dart';
import 'src/globals.dart' as globals;

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

class MedicosClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Médicos',
      home: Medicos(especialidad: '${globals.nombre_especialidad}'),
    );
  }
}

class RecuContraVerificarClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recuperar Contraseña',
      home: RecuContraVerificar(),
      );
  }
}

class RecuContraClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recuperar Contraseña',
      home: RecuContra(),
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

class MenuClass extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu(),
      );
  }
}
