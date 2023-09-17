import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';

class RegistroUsu extends StatefulWidget {
  const RegistroUsu({super.key});

  @override
  State<RegistroUsu> createState() => _RegistroUsuState();
}

class _RegistroUsuState extends State<RegistroUsu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 232, 244),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        children: <Widget>[
          const SizedBox(
            height: 50.0,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
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
                            child: Text('¡Animate!',
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
                            child: Text("Descubre tu mundo médico",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 18,
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
            height: 89.0,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
              CircleAvatar(
                radius: 65.0,
                backgroundImage: AssetImage('images/imagen-usuario.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 69.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      fillColor: Color.fromARGB(255, 235, 235, 235),
                      prefixIcon: Icon(Icons.account_circle_sharp),
                      prefixIconConstraints: BoxConstraints(
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
              const SizedBox(
                height: 25.0,
              ),
              //TextBox para la contrasenia 1
              SizedBox(
                width: 350.0,
                //Sombre para el Textfield de Contraseña
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
                      fillColor: Color.fromARGB(255, 235, 235, 235),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 70,
                        maxHeight: 50,
                      ),
                      hintText: 'Ingrese su Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              SizedBox(
                width: 350.0,
                //Sombre para el Textfield de Contraseña
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
                      fillColor: Color.fromARGB(255, 235, 235, 235),
                      prefixIcon: Icon(Icons.lock),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: 70,
                        maxHeight: 50,
                      ),
                      hintText: 'Confirme su Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80.0,
              ),
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
                              builder: (context) => const Login()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text(
                      'Registrate',
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
