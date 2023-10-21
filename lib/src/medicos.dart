import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tumundomedico_flutter/src/app.dart';
import 'package:http/http.dart' as http;
import 'package:tumundomedico_flutter/src/listaMedicos.dart';

class Medicos extends StatefulWidget {
  const Medicos({Key? key}) : super(key: key);

  @override
  State<Medicos> createState() => _Medicos();
}

class _Medicos extends State<Medicos> {
  late Future<List<listaMedicos>> doctors;
  final TextEditingController searchController = TextEditingController();
  List<listaMedicos> filteredDoctors = [];
  List<listaMedicos> doctorList = []; // Define the doctorList at the class level

  @override
  void initState() {
    super.initState();
    doctors = fetchDoctorData();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Médicos',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    color: Color(0xff030243),
                    fontWeight: FontWeight.w700,
                    height: 27 / 22,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Search TextField
              Material(
                elevation: 20.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(25.0),
                child: TextField(
                  controller: searchController,
                  onChanged: (query) {
                  updateSearchResults(query);
                  },
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 235, 235, 235),
                    prefixIcon: Icon(Icons.search),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 50,
                      maxHeight: 50,
                    ),
                    hintText: 'Busca un médico',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              // Space
              SizedBox(
                height: 21,
              ),
            ],
          ),
          // Doctors List
          FutureBuilder<List<listaMedicos>>(
            future: doctors,
            builder: (context, AsyncSnapshot<List<listaMedicos>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('Error: ${snapshot.error}'),
                );
              } else {
                final data = snapshot.data;
                if (data != null) {
                  // Update the doctorList variable
                  doctorList = data;

                  return Column(
                    children: buildDoctorWidgets(data),
                  );
                } else {
                  return Center(
                    child: Text('No hay data disponible.'),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  List<Widget> buildDoctorWidgets(List<listaMedicos> doctorList) {
  if (filteredDoctors.isNotEmpty) {
    // Muestra los resultados de la búsqueda si hay disponible
    return filteredDoctors.map((doctor) => buildDoctorWidget(doctor)).toList();
  } else {
    // Muestra la lista entera, si no se búsca nada
    return doctorList.map((doctor) => buildDoctorWidget(doctor)).toList();
  }
}

  void updateSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredDoctors = [];
      });
    } else {
      final lowercaseQuery = query.toLowerCase();
      final matchingDoctors = doctorList.where((doctor) {
        final lowercaseName = doctor.nombres.toLowerCase();
        final lowercaseSpeciality = doctor.especialidad.toLowerCase();
        return lowercaseName.contains(lowercaseQuery) || lowercaseSpeciality.contains(lowercaseQuery);
      }).toList();

      setState(() {
        filteredDoctors = matchingDoctors;
      });
    }
  }

Future<List<listaMedicos>> fetchDoctorData() async {
  final Uri url = Uri.parse('http://localhost/TuMundoMedicoService/medicos.php');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    if (data is List) {
      return data.map((json) => listaMedicos.fromJson(json)).toList();
    } else {
      throw Exception('Invalid data format: $data');
    }
  } else {
    throw Exception('Failed to load doctor data');
  }
}

Widget buildDoctorWidget(listaMedicos doctor) {
  
  return Column(
    children: [
  ClipRRect(
    borderRadius: BorderRadius.circular(25.0),
    child: Material(
    elevation: 20.0,
    shadowColor: Colors.black, // Add shadowColor here
    color: Color(0xFFEBEBEB),
    borderRadius: BorderRadius.circular(25.0),
    child: Row(
      children: [
        // Left: Componente de la imagen de usuario lado izquierdo
        Container(
          width: 42,
          height: 38,
          margin: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/imagen-usuario.png'),
              fit: BoxFit.cover,
            ),
          ),
          
        ),
        SizedBox(width: 20),

        // Middle: Cuatro líneas de texto centradas
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Dr. ${doctor.nombres}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF616161),
                  ),
                ),
                Text(
                  doctor.especialidad,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF040243),
                  ),
                ),
                Text(
                  doctor.direccion,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF616161),
                  ),
                ),
                Text(
                  'Tel.: ${doctor.tel}',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF616161),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 16),

        // Right: Texto del Costo Centrado
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            'USD ${doctor.precio.toStringAsFixed(2)}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              color: Color(0xFF0CAE90),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(height: 20), // Add spacing between doctor cards
    ],
  );
}
}