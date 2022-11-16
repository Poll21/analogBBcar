//Класс хранящий данные автомобиля

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataCar{
  final String brandCar, modelCar, numberCar, colorCar;
  final Image photoCar;
  final int idUser, idCar, drivingExperienceUser;

  DataCar(  {
    required this.idCar,                  //id автомобиля
    required this.idUser,                 //id водителя
    required this.drivingExperienceUser,  //стаж вождения
    required this.brandCar,               //бренд авто
    required this.modelCar,               //модель авто
    required this.numberCar,              //номер авто
    required this.colorCar,               //цвет авто
    required this.photoCar,               //фото авто
  });
}

final List<DataCar> listDataCar =[
  DataCar(
      idCar: 1,
      idUser: 1,
      drivingExperienceUser: 5,
      brandCar: 'BMW',
      modelCar: 'X5',
      numberCar: 'ВА555Л',
      colorCar: 'Черный',
      photoCar: Image.asset('assets/images/car.png'),
  ),
  DataCar(
      idCar: 2,
      idUser: 1,
      drivingExperienceUser: 3,
      brandCar: 'Mazda',
      modelCar: '3',
      numberCar: 'ВА535Р',
      colorCar: 'Красная',
      photoCar: Image.asset('assets/images/car.png')
  ),
];
