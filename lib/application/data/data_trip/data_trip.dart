//класс хранящий данные поездки

import 'package:flutter/material.dart';

class DataTrip{
  final String departure, destination,
      destTime, depTime, dateTrip, commentTrip;
  final int idDriver, idTrip, priceTrip, pricePak, vacancies ;
  final bool package, pats, baggage, alcohol, food, babyChair, smoking;
  final List <int> passengers;
  final List <int> travelRequests;
  final List <int> packageId;


  DataTrip( {
    required this.idTrip,       //id поездки
    required this.idDriver,     //id водителя
    required this.departure,    //пункт отправления
    required this.destination,  //пункт назначения
    required this.depTime,      //время отправления
    required this.destTime,     //время прибытия
    required this.dateTrip,     //дата поездки
    required this.priceTrip,    //цена поездки
    required this.pricePak,     //цена перевозки посылки
    required this.vacancies,    //количество мест
    required this.commentTrip,  //комментарий водителя

    required this.package,      //берет посылки
    required this.pats,         //перевозка домашних животных
    required this.baggage,      //багаж
    required this.alcohol,      //алкоголь
    required this.food,         //еда
    required this.babyChair,    //детское кресло
    required this.smoking,      //курение

    required this.packageId,      //список ID отправителей посылки
    required this.passengers,     //список ID пасожиров принятых заявок
    required this.travelRequests, //ID пасожиров подавших заявку
  });
}

final List<DataTrip> listDataTrip =[
  DataTrip(
    idDriver: 2,
    idTrip: 1,
    departure: 'Москва',
    depTime: '22:33',
    destination: 'Выкса',
    destTime: '03:15',
    dateTrip: 'Сегодня',
    priceTrip: 1000,
    pricePak: 200,
    vacancies: 3,
    commentTrip: 'Гарантирую хорошую поездку на комфортабельном автомобиле.',

    package: false,
    smoking: false,
    food: true,
    pats: false,
    baggage: true,
    babyChair: false,
    alcohol: false,

    passengers: [4,3,2],
    travelRequests: [7,6,5],
    packageId: [1],

  ),
  DataTrip(
    idDriver: 2,
    idTrip: 2,
    departure: 'Чета',
    depTime: '22:33',
    destination: 'Барнаул',
    destTime: '03:15',
    dateTrip: '30.06.22',
    priceTrip: 1000,
    vacancies: 3,
    pricePak: 200,
    commentTrip: 'Гарантирую хорошую поездку на комфортабельном автомобиле.',

    package: true,
    smoking: false,
    food: true,
    pats: false,
    baggage: true,
    babyChair: false,
    alcohol: false,

    passengers: [4],
    travelRequests: [3],
    packageId: [1,0],
  ),
  DataTrip(
    idDriver: 2,
    idTrip: 0,
    departure: 'Базнаул',
    depTime: '13:30',
    destination: 'Новосибирск',
    destTime: '17:15',
    dateTrip: '22.07.22',
    priceTrip: 800,
    pricePak: 200,
    vacancies: 5,
    commentTrip: 'Гарантирую хорошую поездку на комфортабельном автомобиле. '
        'Я отвечу и перезвоню',

    package: true,
    smoking: true,
    food: true,
    pats: true,
    baggage: true,
    babyChair: true,
    alcohol:true,

    passengers: [4,0,2,1],
    travelRequests: [7,6,5],
    packageId: [2,3],
  ),
];
