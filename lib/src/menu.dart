import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/acercade.dart';
import 'package:tumundomedico_flutter/src/inicio.dart';
import 'package:tumundomedico_flutter/src/medicos.dart';
import 'package:tumundomedico_flutter/src/perfil.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Inicio();
      case 1:
        return const Medicos();
      case 2:
        return const Perfil();
      case 3:
        return const AcercaDe();
    }
  }

  _onSelectItem(int pos) {
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        actions: [
          Builder(
            builder: (context) => Align(
              alignment: Alignment.centerLeft,
              child:IconButton(
              icon: const Icon(Icons.menu, color: Colors.black, size: 50),
              padding: const EdgeInsets.fromLTRB(0, 10, 350, 0),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            ),
          ),
        ],
        /*iconTheme: const IconThemeData(
          color: Colors.black,
          size: 50,
          ),*/
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 10, 118, 98),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 50.0,
            ),
            const Column(
              children: [
                // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
                CircleAvatar(
                  radius: 85.0,
                  backgroundImage: AssetImage('images/imagen-usuario.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Column(
              children: [
                SizedBox(
                  width: 900,
                  child: Align(
                    alignment: Alignment.center,
                    //Acá se colocan los textos de bienvenida
                    child: Text('Usuario',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 24,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w700,
                            height: 27 / 22),
                        textAlign: TextAlign.center),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                //Opcion de inicio
                ListTile(
                  title: const Text(
                    'Inicio',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                  ),
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _onSelectItem(0);
                    Navigator.of(context).pop();
                  },
                ),
                //Opcion de medicos
                ListTile(
                  title: const Text(
                    'Medicos',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                  ),
                  leading: const Icon(
                    Icons.medical_information,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _onSelectItem(1);
                    Navigator.of(context).pop();
                  },
                ),
                //Opcion de perfil
                ListTile(
                  title: const Text(
                    'Perfil',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _onSelectItem(2);
                    Navigator.of(context).pop();
                  },
                ),
                //Opcion de acerca de
                ListTile(
                  title: const Text(
                    'Acerca De',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                  ),
                  leading: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  onTap: () {
                    _onSelectItem(3);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 190,
            ),
            Column(
              children: [
                //Boton de Registrarse
                SizedBox(
                  height: 35,
                  width: 250,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 241, 6, 6),
                          width: 2,
                        )),
                    elevation: 20.0,
                    shadowColor: Colors.black,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      child: const Text(
                        'Cerrar Sesión',
                        style: TextStyle(
                          color: Color.fromARGB(255, 241, 6, 6),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
