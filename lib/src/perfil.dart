import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/main.dart';


class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 9, 127, 12),
        ),
      ),

      appBar: AppBar(
        title: const Text ('Perfil'),

      ),

      backgroundColor: Color.fromARGB(255, 233, 240, 243),
      


      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
        children: <Widget>[


          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              const Row(
                children: <Widget>[

                  //Mostrar letras NOMBRE USUARIO
                Align(
                  alignment: Alignment.center,

                  //Acá se colocan los textos de bienvenida
                 child: Text('NOMBRE //  USUARIO',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 50,
                          color: Color(0xff030243),
                          fontWeight: FontWeight.w700,
                          height: 90 / 80),
                      textAlign: TextAlign.left),

                ),
                //Fin del Align
                
                
                Expanded(
                  child: Text('', textAlign: TextAlign.center),
                ),
                

                  //Es para el logo, en nuestro caso mostrar imagen de perfil
                CircleAvatar(
                        
                  radius: 80.0,
                  backgroundImage: AssetImage('images/imagen-usuario.png'),
                        
             
                ),


                ],
              )


            ],
          ),

        //Bloque de información general y text box
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Información General",
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
                height: 20,
              ),
            ],
          ),


        //Textbox nombres y apellidos
         Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             
              const Row(
              children: <Widget>[
                Expanded(
                  child: 

                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese sus Nombres',
                  ),
                ),

                ),
                Expanded(
                  child: 

                  TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese sus Apellidos',
                  ),
                ),

                ),

              ],
            )

            ],
          ),

          //Correo, dirección, departamento y edad
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
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
                    TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese su Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              //Espacio entre el email y la dirección
              const SizedBox(
                height: 21,
              ),
              //Sombre para el Textfield de la Dirección
              Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
                child:
                    //Textfield de dirección
                    TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.lock),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese su Dirección',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              //Espacio entre la dirección y departamento-edad
              SizedBox(
                height: 21,
              ),
              
              //departamento y edad
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Row(
              children: <Widget>[
              
                Expanded(
                  child: 

                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese Departamento',
                  ),
                ),
                

                ),
                Expanded(
                  child: 

                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.account_circle_sharp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Ingrese su Edad',
                  ),
                ),
                  

                ),

              ],
            )

            ],
          ),
             //Espacio entre la departmento-edad y actualizar contraseña
              SizedBox(
                height: 21,
              ),

              //Boton de Actualizar Contraseña
              SizedBox(
                height: 35,
                width: 300,
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AcercaDeClass()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 12, 91, 115)),
                    ),
                    child: Text(
                      'Actualizar Contraseña',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),

               //Espacio entre actualizar contraseña e información de pago
              SizedBox(
                height: 21,
              ),

            //información de pago
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             
              const Row(
              children: <Widget>[
               
                Expanded(
                  child: 

                  SizedBox(
                child: Text(
                  'Información de Pago',
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 4, 23, 237),
                    height: 23 / 12,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

                ),

              ],
            )

            ],
          ),

               //Espacio entre información de pago y fecha de factura
              SizedBox(
                height: 12,
              ),

            //fecha de factura
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             
              const Row(
              children: <Widget>[
               
                Expanded(
                  child: 

                  SizedBox(
                child: Text(
                  'Fecha de Factura',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 4, 23, 237),
                    height: 23 / 12,
                  ),
                ),
              ),


                ),

              ],
            )

            ],
          ), //Termina column de factura


              
              //Espacio entre botones
              SizedBox(
                height: 10,
              ),

              

              //Boton de mm/yyyy
              SizedBox(
                height: 25,
                width: 80,
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      'MM/YYYY',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 165, 188, 177),
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
          //Termina el column

        ],
      ),
    );
  }
}