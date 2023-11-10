class listaMedicos {
  final String nombres;
  final String apellidos;
  final String especialidad;
  final String direccion;
  final String tel;
  final double precio;

  listaMedicos({
    required this.nombres,
    required this.apellidos,
    required this.especialidad,
    required this.direccion,
    required this.tel,
    required this.precio,
  });

  factory listaMedicos.fromJson(Map<String, dynamic> json) {
    return listaMedicos(
      nombres: json['nombres_medico'],
      apellidos: json['apellidos_medico'],
      especialidad: json['nombre_especialidad'],
      direccion: json['direccion_medico'],
      tel: json['telefono_medico'],
      precio: double.parse(json['precio_consulta']),
    );
  }
}