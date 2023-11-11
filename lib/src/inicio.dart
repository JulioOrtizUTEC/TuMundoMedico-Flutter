import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tumundomedico_flutter/src/listaEspecialidades.dart';
import 'package:tumundomedico_flutter/src/medicos.dart';
import 'package:tumundomedico_flutter/src/menu.dart';
import 'package:tumundomedico_flutter/src/listaEspecialidades.dart';
import 'package:http/http.dart' as http;
import 'globals.dart' as globals;

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  Future<List<listaEspecialidades>>? especialidades;
  final TextEditingController searchController = TextEditingController();
  List<listaEspecialidades> filteredEspecialidades = [];
  List<listaEspecialidades> EspecialidadesList =[]; // Define the doctorList at the class level

  @override
  void initState() {
    super.initState();
    especialidades = fetchEspecialidadesData();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }  

  Menu menu = new Menu();
  @override
  Widget build(BuildContext context) {
  return WillPopScope(
    onWillPop: () async {
      // Pop the current page before pushing the new one.
      Navigator.pop(context);
      return false;
    },
  child: Scaffold(
    backgroundColor: const Color(0xFFFFFFFF),
    body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 51.0),
      children: <Widget>[
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
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 20.0,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(25.0),
              child: TextFormField(
                controller: searchController,
                onChanged: (query) {
                  updateSearchResults(query);
                },
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
        // Doctors List
        FutureBuilder<List<listaEspecialidades>>(
          future: especialidades,
          builder:
              (context, AsyncSnapshot<List<listaEspecialidades>> snapshot) {
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
                EspecialidadesList = data;

                return buildEspecialidadesWidgets(data);
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
  ),
  );
}

Widget buildEspecialidadesWidgets(List<listaEspecialidades> EspecialidaList) {
  final List<listaEspecialidades> displayList =
      filteredEspecialidades.isNotEmpty ? filteredEspecialidades : EspecialidaList;

  return GridView.builder(
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Fijar el no. de columnas
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
    ),
    itemCount: displayList.length,
    itemBuilder: (context, index) {
      final especialidad = displayList[index];
      return buildEspecialidadWidget(especialidad);
    },
  );
}


  void updateSearchResults(String query) {
  if (query.isEmpty) {
    setState(() {
      filteredEspecialidades = [];
    });
  } else {
    final lowercaseQuery = query.toLowerCase();
    final matchingEspecialidades = EspecialidadesList.where((especialidad) {
      final lowercaseName = especialidad.nombre_Especialidad.toLowerCase();
      return lowercaseName.contains(lowercaseQuery);
    }).toList();

    setState(() {
      filteredEspecialidades = matchingEspecialidades;
    });
  }
}


  Future<List<listaEspecialidades>> fetchEspecialidadesData() async {
    final Uri url =
        Uri.parse('http://localhost/TuMundoMedicoService/Especialidades.php');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      if (data is List) {
        return data.map((json) => listaEspecialidades.fromJson(json)).toList();
      } else {
        throw Exception('Invalid data format: $data');
      }
    } else {
      throw Exception('Failed to load especialidades data');
    }
  }

Widget buildEspecialidadWidget(listaEspecialidades especiali) {
  return Material(
    color: Colors.white,
    elevation: 8,
    borderRadius: BorderRadius.circular(25.0),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: InkWell(
      splashColor: Colors.black26,
      onTap: () {
        Navigator.push(
          context,
        MaterialPageRoute(
          builder: (context) => Medicos(especialidad: especiali.nombre_Especialidad),
        ),
        );

},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            '${especiali.imagen}',
            height: 94,
            width: 144,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 6,
          ),
          Text('${especiali.nombre_Especialidad}',
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
  );
}
}
