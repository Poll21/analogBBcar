import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';

class SwitchOptionsWidget extends StatefulWidget {
  final String title;

  const SwitchOptionsWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<SwitchOptionsWidget> createState() => _SwitchOptionsWidgetState(
    this.title,
  );
}

class _SwitchOptionsWidgetState extends State<SwitchOptionsWidget> {
  String title;

  _SwitchOptionsWidgetState(
      this.title,
      );

  bool _switch = false;
  Color _backColorY = borderTextField;
  Color _backColorN = primaryColor;

  void _switchY() {
    setState(() {
      if (_switch == false) {
        _switch = true;
        _backColorY = primaryColor;
        _backColorN = borderTextField;
      }
    });
  }

  void _switchN() {
    setState(() {
      if (_switch == true) {
        _switch = false;
        _backColorY = borderTextField;
        _backColorN = primaryColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: textActiveColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          children: [
            SizedBox(
              // width: 60,
              height: 32,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(_backColorY),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: _switchY,
                child: const Text(
                  'Да',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: backGroundColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              //width: 60,
              height: 32,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(_backColorN),
                  elevation: MaterialStateProperty.all<double>(0),
                ),
                onPressed: _switchN,
                child: const Center(
                  child: Text(
                    'Нет',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: backGroundColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.25,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
