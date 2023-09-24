import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';

class Medicos extends StatefulWidget {
  const Medicos({super.key});

  @override
  State<Medicos> createState() => _Medicos();
}

class _Medicos extends State<Medicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
        children: <Widget>[
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                //Acá se colocan los textos de bienvenida
                child: Text('Médicos',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        color: Color(0xff030243),
                        fontWeight: FontWeight.w700,
                        height: 27 / 22),
                    textAlign: TextAlign.right),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Sombre para el Textfield de Busqueda
              Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
                child:
                    //Textfield de busqueda
                    TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.search),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Busca un médico o una especialidad',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              //Espacio
              SizedBox(
                height: 21,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Shadow for the Card
              Container(
                height: 100, //Alto de la Card
                decoration: BoxDecoration(
                   color: Color(0xFFEBEBEB),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0), // Para fijar las esquinas redondeadas
                    child: Row(
                      children: [
                        // Left: Componente de la imagen de usuario lado izquiqerdo
                        Container(
                          width: 42,
                          height: 38,
                          margin: EdgeInsets.only(left: 20), //Margen de la posición izquierda
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/imagen-usuario.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        // Middle: Cuatro líneas de texto centradas
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 5), // Margen superior para centrar el contenido del medio
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Dr. Ramos José Vasquez',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:15,
                                    color: Color(
                                        0xFF616161),
                                  ),
                                ),
                                Text('Medicina General',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11, 
                                    color: Color(0xFF040243),
                                  ),
                                ),
                                Text('Col. Médica, San Salvador, El Salvador',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11, 
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                Text( 'Tel.: 2275-5053',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11,
                                    color: Color(0xFF616161),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 16,
                        ),

                        // Right: Texto del Costo Centrado
                        Container(
                          margin: EdgeInsets.only(right:20),
                          child: Text('USD 25.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              color:
                                  Color(0xFF0CAE90),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Space
              SizedBox(height: 25),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Shadow for the Card
              Container(
                height: 100, //Alto de la Card
                decoration: BoxDecoration(
                   color: Color(0xFFEBEBEB),
                   borderRadius: BorderRadius.circular(25.0),
                 ),
                child: Material(
                  elevation: 20.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0), // Para fijar las esquinas redondeadas
                    child: Row(
                      children: [
                        // Left: Componente de la imagen de usuario lado izquiqerdo
                        Container(
                          width: 42,
                          height: 38,
                          margin: EdgeInsets.only(left: 20), //Margen de la posición izquierda
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/imagen-usuario.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),

                        // Middle: Cuatro líneas de texto centradas
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 5), // Margen superior para centrar el contenido del medio
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Dra. Jocelyn Vasquez',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:15,
                                    color: Color(
                                        0xFF616161),
                                  ),
                                ),
                                Text('Pediatria',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11, 
                                    color: Color(0xFF040243),
                                  ),
                                ),
                                Text('Col. Médica, San Salvador, El Salvador',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11, 
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                Text( 'Tel.: 2275-5053',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize:11,
                                    color: Color(0xFF616161),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 16,
                        ),

                        // Right: Texto del Costo Centrado
                        Container(
                          margin: EdgeInsets.only(right:20),
                          child: Text('USD 15.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              color:
                                  Color(0xFF0CAE90),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Space
              SizedBox(height: 16),
            ],
          ),

        ],
      ),
    );
  }
}
