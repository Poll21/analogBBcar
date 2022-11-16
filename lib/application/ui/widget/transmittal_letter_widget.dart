import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:flutter/material.dart';

class TransmittalLetterWidget extends StatefulWidget {
  const TransmittalLetterWidget({Key? key}) : super(key: key);

  @override
  State<TransmittalLetterWidget> createState() => _TransmittalLetterWidgetState();
}

class _TransmittalLetterWidgetState extends State<TransmittalLetterWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8,),
        const Text('Описание',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: textActiveColor,
            )),
        const SizedBox(height: 8,),
        const TextField(
         autofocus: true,
            maxLines: 8,
            minLines: 8,
            cursorColor: borderTextField,
            style: TextStyle(
              color: textPassiveColor,
              fontSize: 14.57,
              fontFamily: 'Montserrat_Medium',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              filled: true,
              focusColor: borderTextField,
              hintText:'Добавьте описание к поездке. '
                      'Можете рассказать о себе и своих целях. '
                      'Добавления описания повышает шанс подтверждения бронирования.',
              hintStyle: TextStyle(
                      color: textPassiveColor,
                      fontSize: 14.57,
                      fontFamily: 'Montserrat_Medium',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      ),
              contentPadding: EdgeInsets.all(10),
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: borderTextField, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            )),
        const SizedBox(height: 16,),
        ProceedButton( text: 'ОТПРАВИТЬ ЗАПРОС',
          press: () => Navigator.of(context).pushNamed(Screens.successRequest),
          color: primaryColor,),
        const SizedBox(height: 16,),
      ],
    );
  }
}
