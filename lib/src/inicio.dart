import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tumundomedico_flutter/src/medicos.dart';
import 'package:tumundomedico_flutter/src/menu.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Menu menu = new Menu();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
          children: <Widget>[
            //Row(
              //children: [
                //Column(children: [menu.Menu_Widget]),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Especialidades',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              color: Color(0xFF040243),
                              fontWeight: FontWeight.w700,
                              height: 27 / 22),
                          textAlign: TextAlign.right),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                //),
              //],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                  child: TextField(
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 50,
                        minHeight: 50,
                      ),
                      hintText: 'Buscar especialidad',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(25.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: const AssetImage('images/Medicinageneral.jpg'),
                          height: 94,
                          width: 144,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text('Medicina General',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 11,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w700,
                                height: 27 / 22),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(25.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: const AssetImage('images/Urologia.jpg'),
                          height: 94,
                          width: 144,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text('Urología',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 11,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w700,
                                height: 27 / 22),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(25.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {

                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: const AssetImage('images/Cirujanos.jpg'),
                          height: 94,
                          width: 144,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text('Cirugía General',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 11,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w700,
                                height: 27 / 22),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(25.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    splashColor: Colors.black26,
                    onTap: () {
                      
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: const AssetImage('images/Cardiologia.jpg'),
                          height: 94,
                          width: 144,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Text('Cardiología',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 11,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w700,
                                height: 27 / 22),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
