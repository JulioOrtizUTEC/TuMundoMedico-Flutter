import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:tumundomedico_flutter/src/recuperaContraVerificar.dart';
import 'package:http/http.dart';
import 'globals.dart' as globals;

class RecuContra extends StatefulWidget {
  const RecuContra({super.key});

  @override
  State<RecuContra> createState() => _RecuContraState();
}

TextEditingController contraseniaController = TextEditingController();
TextEditingController confirmarContraseniaController = TextEditingController();

class _RecuContraState extends State<RecuContra> {

actualizarContrasenia(String contrasenia) async{
  try{

    var url = Uri.http("localhost", "/TuMundoMedicoService/usuarios.php", {"id":globals.idUser,"contrasenia":contrasenia});
    print(url);
    Response response = await put(url);

    //Se hace una validación para saber si es una respuesta correcta
    if(response.statusCode == 200){
        // Se obtiene la respuesta, pero esta vez al recibir solo un string, se almacena en una variable.
        var respuesta = await jsonDecode(response.body);
        // Se verifica que la respuesta sea distinta de vacio
        if(respuesta == "Usuario actualizado correctamente"){
          contraseniaController.clear();
          confirmarContraseniaController.clear();
          globals.idUser = "";
          //se pasa a enviar al usuario a la pantalla de Login para iniciar sesión
          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
        }else{
          print("Algo sucedio al actualizar la contrasenia");
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
                                    builder: (context) => RecuContraVerificarClass()));
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
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Este es el widget para poder mostrar la imagen de inicio de sesión que setiene en el mockup
              CircleAvatar(
                radius: 85.0,
                child: Image.asset('images/recu.png',fit: BoxFit.fill),
                //backgroundImage: AssetImage('images/recu.png'),
                backgroundColor: Colors.transparent,
                
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
                      TextFormField(
                      controller: confirmarContraseniaController,
                      enableInteractiveSelection: false,
                      obscureText: true,
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 235, 235, 235),
                      prefixIcon: const Icon(Icons.lock),
                      prefixIconConstraints: const BoxConstraints(
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
          const SizedBox(
            height: 60.0,
          ),
          Column(
            children: [
              //Boton de Registrarse
              SizedBox(
                height: 45,
                width: 300,
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      if(contraseniaController.text.toString() == confirmarContraseniaController.text.toString()){
                        actualizarContrasenia(contraseniaController.text.toString());
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 12, 91, 115)),
                    ),
                    child: const Text(
                      'Recuperar Contraseña',
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
