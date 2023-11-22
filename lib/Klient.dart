// To parse this JSON data, do
//
//     final klient = klientFromJson(jsonString);

import 'dart:convert';

import 'package:mysql1/mysql1.dart';

Klient klientFromJson(String str) => Klient.fromJson(json.decode(str));

String klientToJson(Klient data) => json.encode(data.toJson());

class Klient {
  int? id;
  String? fio;

  Klient({
    this.id,
    this.fio,
  });

  factory Klient.fromJson(Map<String, dynamic> json) => Klient(
    id: json["id"],
    fio: json["FIO"],
  );
  factory Klient.fromMysql(ResultRow json) => Klient(
    id: json["id"],
    fio: json["FIO"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "FIO": fio,
  };
}
