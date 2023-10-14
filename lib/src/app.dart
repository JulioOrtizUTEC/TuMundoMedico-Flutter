import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';
import 'package:tumundomedico_flutter/src/acercade.dart';
import 'package:tumundomedico_flutter/src/inicio.dart';
import 'package:tumundomedico_flutter/src/registrarUsuario.dart';
import 'package:http/http.dart';
import 'globals.dart' as globals;


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


TextEditingController usuarioController = TextEditingController();
TextEditingController contraseniaController = TextEditingController();
var logueado = 0;
var id = "";
var usr = "";

class _LoginState extends State<Login> {
  
login(String usuario, String contrasenia) async{
  try{
    Response response = await post(
      Uri.parse("http://localhost/TuMundoMedicoService/login.php"),
      body: {
        'username': usuario,
        'pass': contrasenia 
      }
    );

    //Se hace una validación para saber si es una respuesta correcta
    if(response.statusCode == 200){
        // Se obtiene la respuesta json de la API
        final Map<String,dynamic> respuesta = await jsonDecode(response.body);
        id = respuesta["id_usuario"];
        usr = respuesta["usuario"];
        // Se verifica que los usuarios sean distintos de vacio
        if(id != "" && usr != ""){
          //Se guarda el id de usuario y el usuario en variables globales
          globals.idUser = id;
          globals.user = usr;
          //se pasa a enviar al usuario a la pantalla de inicio
          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MenuClass()));
        }
      }else{
        print("El usuario no existe");
      }
  }catch(e){
    print(e.toString());
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC1E8F4),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
        children: <Widget>[
          const SizedBox(
            height: 50.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                //Acá se colocan los textos de bienvenida
                child: Text('¡Bienvenido/a!',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Color(0xff030243),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                    textAlign: TextAlign.left),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nos encanta verte de nuevo",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff030243),
                    height: 27 / 14,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 120,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/imagen-usuario.png'),
              ),
              //Espacio entre la imagen y el primer textfield
              SizedBox(
                height: 21,
              ),
              //El Material sirve para elevar el componente y darle sombras
              //Sombre para el Textfield de usuario
              Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
                child:
                    //Textfield de usuario
                    TextFormField(
                    controller: usuarioController,
                    enableInteractiveSelection: false,
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
              //Espacio entre el usuario y la contraseña
              const SizedBox(
                height: 21,
              ),
              //Sombre para el Textfield de Contraseña
              Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
                child:
                    //Textfield de usuario
                    TextFormField(
                    controller: contraseniaController,
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
              //Espacio entre la contraseña y el link de recuperar contraseña
              SizedBox(
                height: 21,
              ),
              SizedBox(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RecuContraVerificarClass()));
                  },
                  child: const Text(
                    '¿Olvidaste tu contraseña?',
                    style: const TextStyle(
                      fontFamily: "Lato",
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff0cae90),
                      height: 23 / 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              //Espacio entre el link de recuperar contraseña y los botones
              SizedBox(
                height: 21,
              ),
              //Boton de Inicio de Sesion
              SizedBox(
                height: 35,
                width: 300,
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      login(usuarioController.text.toString(), contraseniaController.text.toString());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 12, 91, 115)),
                    ),
                    child: Text(
                      'Iniciar Sesión',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              //Espacio entre botones
              SizedBox(
                height: 21,
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
                              builder: (context) => RegistroUsu()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      'Registrate',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 12, 174, 144),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
