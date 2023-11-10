

class listaEspecialidades {
  final String id_especialidad;
  final String nombre_Especialidad;
  final String imagen;

  listaEspecialidades({
    required this.id_especialidad,
    required this.nombre_Especialidad,
    required this.imagen,
  });

  factory listaEspecialidades.fromJson(Map<String, dynamic> json) {
    return listaEspecialidades(
      id_especialidad: json['id_especialidades'],
      nombre_Especialidad: json['nombre_especialidad'],
      imagen: json['imagen'],
    );
  }
}