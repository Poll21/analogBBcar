import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/generate/my_flutter_app_icons.dart';
import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/trip_additional_form_widget.dart';
import 'package:flutter/material.dart';

//создает расширенный список дополнительных опций поездки
class TripAdditionalFactory extends StatelessWidget {
  final DataTrip tripList;

  const TripAdditionalFactory({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> additionalItem = [];
    if (tripList.pats == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.pets_yes, descriptionAdd: 'Можно с животными'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.pets_yes, descriptionAdd: 'Нельзя с животными'));
    }
    if (tripList.babyChair == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.baby, descriptionAdd: 'Есть детское кресло'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.baby, descriptionAdd: 'Нет детского кресла'));
    }
    if (tripList.baggage == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.luggage_yes, descriptionAdd: 'Можно с багажом'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.luggage_yes, descriptionAdd: 'Нельзя с багажом'));
    }
    if (tripList.food == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.food_yes, descriptionAdd: 'Можно с едой'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.food_yes, descriptionAdd: 'Можно с едой'));
    }
    if (tripList.alcohol == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.alcohol_yes, descriptionAdd: 'Можно с алкоголем'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.alcohol_yes, descriptionAdd: 'Нельзя с алкоголем'));
    }
    if (tripList.smoking == true) {
      additionalItem.add(const TripAdditionalForm(
          iconAdd: UiIcons.smoke_yes, descriptionAdd: 'Можно курить'));
    } else {
      additionalItem.add(const TripAdditionalNotForm(
          iconAdd: UiIcons.smoke_yes, descriptionAdd: 'Нельзя курить'));
    }
    return Column(
      children: additionalItem,
    );
  }
}

//создает краткий список дополнительных опций поездки
class TripAdditionalShortFactory extends StatelessWidget {
  final DataTrip tripList;
  const TripAdditionalShortFactory({Key? key, required this.tripList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> additionalShortItem = [];
    if (tripList.pats == true) {
      additionalShortItem.add(const Icon(
        UiIcons.pets_yes,
        size: 20,
      ));
    }
    if (tripList.babyChair == true) {
      additionalShortItem.add(const Icon(
        UiIcons.baby,
        size: 20,
      ));
    }
    if (tripList.baggage == true) {
      additionalShortItem.add(const Icon(
        UiIcons.luggage_yes,
        size: 20,
      ));
    }
    if (tripList.food == true) {
      additionalShortItem.add(const Icon(
        UiIcons.food_yes,
        size: 20,
      ));
    }
    if (tripList.alcohol == true) {
      additionalShortItem.add(const Icon(
        UiIcons.alcohol_yes,
        size: 20,
      ));
    }
    if (tripList.smoking == true) {
      additionalShortItem.add(const Icon(
        UiIcons.smoke_yes,
        size: 20,
      ));
    }
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: additionalShortItem,
    );
  }
}
