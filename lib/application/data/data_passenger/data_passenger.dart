import 'package:flutter/material.dart';
// класс хранящий информацию о пассажире поездки
class DataPassenger {
  final String transmittalLetter;
  final int idUser, idTrip;

  const DataPassenger({
    required this.idUser, //id пользователя
    required this.idTrip, //id поездки
    required this.transmittalLetter //сопроводительное письмо пассажира
  });
}

final List<DataPassenger> dataPassenger = [
  DataPassenger(
      idUser: 2,
      idTrip: 2,
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
  DataPassenger(
      idUser: 1,
      idTrip: 2,
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
  DataPassenger(
      idUser: 3,
      idTrip: 2,
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
  DataPassenger(
      idUser: 4,
      idTrip: 2,
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
];