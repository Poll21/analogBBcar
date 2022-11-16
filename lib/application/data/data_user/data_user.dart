//класс хранящий данные пользователя

import 'package:analoguebbcars/application/data/data_car_user/data_car_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class DataUser{
  final String nameUser;
  final Image avatarUser;
  final int idUser, reviewUser, phoneUser, allTripsUser;
  final double ratingUser;
  final DataCar? userCar;
  final String? transmittalLetter;
  const DataUser( {
    required this.idUser,       //id пользователя
    required this.nameUser,     //имя пользователя
    required this.avatarUser,   //фото пользователя
    required this.phoneUser,    //Телефон
    required this.reviewUser,   //колличество отзывов
    required this.ratingUser,   //рейтинг
    required this.allTripsUser, //число поездок
    this.userCar,               //автомобиль пользователя (не обязательный параметор)
    this.transmittalLetter,     //сопроводительное письмо пассажыра
});
}

final List<DataUser> listDataUser = [
  DataUser(
    idUser: 1,
    avatarUser: Image.asset('assets/images/photo.png'),
    nameUser: 'Анна',
    phoneUser: 9236784501,
    reviewUser: 5,
    ratingUser: 4.5,
    allTripsUser: 5,
    userCar: listDataCar[1], ),
  DataUser(
    idUser: 2,
    avatarUser: Image.asset('assets/images/user_3.png'),
    nameUser: 'Фудор',
    phoneUser: 9366784502,
    reviewUser: 4,
    ratingUser: 3.5,
    allTripsUser: 6,
transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
  DataUser(
    idUser: 3,
    avatarUser: Image.asset('assets/images/user_2.png'),
    nameUser: 'Инна',
    phoneUser: 9366784503,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,
transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. С собой багаж и кот. Без вредных привычек. Спасибо'),
  DataUser(
    idUser: 4,
    avatarUser: Image.asset('assets/images/user_3.png'),
    nameUser: 'Петя',
    phoneUser: 9366784504,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
  DataUser(
    idUser: 5,
    avatarUser: Image.asset('assets/images/user_4.png'),
    nameUser: 'Соня',
    phoneUser: 9366784505,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
  DataUser(
    idUser: 6,
    avatarUser: Image.asset('assets/images/user_3.png'),
    nameUser: 'Игорь',
    phoneUser: 9366784506,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
  DataUser(
    idUser: 7,
    avatarUser: Image.asset('assets/images/user_2.png'),
    nameUser: 'Елена',
    phoneUser: 9366784507,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
  DataUser(
    idUser: 8,
    avatarUser: Image.asset('assets/images/user_3.png'),
    nameUser: 'Николай',
    phoneUser: 9366784508,
    reviewUser: 2,
    ratingUser: 3.6,
    allTripsUser: 3,),
];

