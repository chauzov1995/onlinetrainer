import 'package:mysql1/mysql1.dart';
import 'package:onlinetrainer/Klient.dart';

class tehclass {
  static late MySqlConnection conn;
  static late Klient klientselekted;
  static late List<Klient> spisklient;

  static Future<void> openbd() async {
    var settings = new ConnectionSettings(
        host: 'b96300p8.beget.tech',
        port: 3306,
        user: 'b96300p8_ontr',
        password: 'User1234',
        db: 'b96300p8_ontr');
    conn = await MySqlConnection.connect(settings);
  }


  static Future<void> loadspisklient() async {
    spisklient = [];
    var results = await conn.query('SELECT * FROM `klients`');
    for (var row in results) {
      spisklient.add(Klient.fromMysql(row));
      //print('Name: ${row[0]}, email: ${row[1]}');
    }

  }


}
