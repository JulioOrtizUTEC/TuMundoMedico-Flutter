import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';
import 'package:tumundomedico_flutter/src/app.dart';

class RecuContraVerificar extends StatefulWidget {
  const RecuContraVerificar({super.key});

  @override
  State<RecuContraVerificar> createState() => _RecuContraVerificarState();
}

class _RecuContraVerificarState extends State<RecuContraVerificar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC1E8F4),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        children: <Widget>[
          const SizedBox(
            height: 50.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    child: Align(
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
                            children: [
                              Icon(Icons.arrow_back_ios),
                            ],
                          )),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 900,
                          child: Align(
                            alignment: Alignment.centerRight,
                            //Acá se colocan los textos de bienvenida
                            child: Text('Recupera tu contraseña',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 3, 2, 67),
                                    fontWeight: FontWeight.w700,
                                    height: 27 / 22),
                                textAlign: TextAlign.right),
                          ),
                        ),
                        SizedBox(
                          width: 900,
                          child: Align(
                            alignment: Alignment.centerRight,
                            //Acá se colocan los textos de bienvenida
                            child: Text("Sigue los pasos de la aplicación",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff030243),
                                  height: 27 / 14,
                                ),
                                textAlign: TextAlign.right),
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
            height: 120.0,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
              CircleAvatar(
                radius: 85.0,
                backgroundImage: AssetImage('images/imagen-usuario.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //El textbox para ingresar el usuario
              SizedBox(
                width: 350.0,
                //Sombre para el Textfield de usuario
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                  child:
                      //Textfield de usuario
                      TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 235, 235, 235),
                      prefixIcon: const Icon(Icons.account_circle_sharp),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 70,
                        maxHeight: 50,
                      ),
                      hintText: 'Ingrese su Usuario',
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
            height: 60.0,
          ),
          Column(
            children: [
              //Boton de Registrarse
              SizedBox(
                height: 35,
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
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 174, 144),
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
