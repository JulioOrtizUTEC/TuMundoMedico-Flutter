import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/recuperaContra.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  // Initial Selected Value
  String dropdownvalue = 'Seleccione Departamento';

  // List of items in our dropdown menu
  var items = [
    'Seleccione Departamento',
    'Ahuachapán',
    'Cabañas',
    'Chalatenango',
    'Cuscatlán',
    'La Libertad',
    'La Paz',
    'La Unión',
    'Morazán',
    'San Miguel',
    'San Salvador',
    'San Vicente',
    'Santa Ana',
    'Sonsonate',
    'Usulután'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        children: <Widget>[
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    width: 900,
                    child: Align(
                      alignment: Alignment.centerRight,
                      //Acá se colocan los textos de bienvenida
                      child: Text('Perfil',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              color: Color.fromARGB(255, 3, 2, 67),
                              fontWeight: FontWeight.w700,
                              height: 27 / 22),
                          textAlign: TextAlign.right),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Nombre Usuario',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 24,
                              color: Color.fromARGB(255, 12, 91, 115),
                              fontWeight: FontWeight.w700,
                              height: 27 / 22),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child:
                                // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
                                CircleAvatar(
                              radius: 70.0,
                              backgroundImage:
                                  AssetImage('images/imagen-usuario.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text('Información General',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Color.fromARGB(255, 4, 2, 67),
                          fontWeight: FontWeight.w700,
                          height: 27 / 22),
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const SizedBox(
                    width: 20.0,
                  ),
                  //El textbox para ingresar el nombre
                  SizedBox(
                    width: 175.0,
                    //Sombre para el Textfield de nombre
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                      child:
                          //Textfield de nombre
                          TextField(
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 235, 235, 235),
                          hintText: 'Ingrese sus Nombres',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  SizedBox(
                    width: 175.0,
                    //Sombre para el Textfield de usuario
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                      child:
                          //Textfield de usuario
                          TextField(
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 235, 235, 235),
                          hintText: 'Ingrese sus Apellidos',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              SizedBox(
                width: 360.0,
                //Sombre para el Textfield de usuario
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                  child:
                      //Textfield de usuario
                      TextField(
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 235, 235, 235),
                      hintText: 'Ingrese su Correo Electronico',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: SizedBox(
                      width: 250.0,
                      //Sombre para el Textfield de usuario
                      child: Material(
                        elevation: 20.0,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(25.0),
                        child: DropdownButtonFormField(
                          // Initial Value
                          value: dropdownvalue,
                          decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 235, 235, 235),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  SizedBox(
                    width: 100.0,
                    //Sombre para el Textfield de usuario
                    child: Material(
                      elevation: 20.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(25.0),
                      child:
                          //Textfield de usuario
                          TextField(
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 235, 235, 235),
                          hintText: 'Edad',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            children: <Widget>[
              //Boton de Registrarse
              SizedBox(
                height: 45,
                width: 300,
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecuContraClass()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 136, 144, 194)),
                    ),
                    child: const Text(
                      'Actualizar Contraseña',
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
