import 'package:mysql1/mysql1.dart';

class MySQL{
  static String host = 'tu-mundo-medico-flutter-db.ctwd6mldl2x4.us-east-2.rds.amazonaws.com',
                user = 'admin',
                password = "FlutterBD2023",
                db =  'MundoMedicoDB';
  static int port = 3306;

  MySQL();

  Future<MySqlConnection> getConnection() async{
    var settings = new ConnectionSettings(
      host: host,
      user: user,
      password: password,
      db: db
    );
    return await MySqlConnection.connect(settings);
  }
}

