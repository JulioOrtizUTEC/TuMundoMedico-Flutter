import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';

class AcercaDe extends StatefulWidget {
  const AcercaDe({super.key});

  @override
  State<AcercaDe> createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Icon(Icons.arrow_back_ios), Text('Regresar')],
                    )),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                //Acá se colocan los textos de bienvenida
                child: Text('Acerca De',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Color(0xff030243),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                    textAlign: TextAlign.left),
              ),
              SizedBox(
                height: 50.0,
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/TuMundoMedicoPerfil.jpg'),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Descripción
              Text(
                'Tu Mundo Médico es una aplicación desarrollada por un grupo de estudiantes universitarios de 5to año que buscan crear una alternativa para aquellas personas que desean buscar médicos haciendo uso de un directorio médico totalmente gratuito a todos los usuarios que descarguen la aplicación. Puedes explorar la aplicación, calificarla y darnos tu opinión sobre mejoras o comentarios generales',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff030243),
                  height: 27 / 14,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
          const Column(
            children: <Widget>[
              // Desarrolladores
              Text(
                'Desarrolladores',
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 12, 174, 144),
                  height: 27 / 14,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: //Listado de Desarrolladores
                    Text(
                  '▶ Campos Durán, Oscar Alberto',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '▶ Hernandez Hernandez, Rosa del Carmen',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '▶ Herrera Velasquez, Rosa del Carmen',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '▶ Ortiz Romero, Julio Enmanuel',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '▶ Rosales Anzora, Juan Ernesto',
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
