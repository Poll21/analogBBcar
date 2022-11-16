import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';

//кнопка принимающая цвет, текст, функцию
class ProceedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function() press;
  const ProceedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: press,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: backGroundColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.72,
            ),
          ),
        ),
      ),
    );
  }
}

class ProceedButtonShou extends StatefulWidget {
   final String text;
   final Color color;

  const ProceedButtonShou({
    Key? key,
    required this.text, required this.color,
  }) : super(key: key);

  @override
  State<ProceedButtonShou> createState() => _ProceedButtonShouState();
}

class _ProceedButtonShouState extends State<ProceedButtonShou> {
   Color _color = backGroundColor;
   Color _textColor = textPassiveColor;
   List<String> _cause =[];

  @override
  Widget build(BuildContext context) {
    final String _text = widget.text;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: SizedBox(
        height: 34,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: _textColor),
                  borderRadius: BorderRadius.circular(10),
                )),
            backgroundColor: MaterialStateProperty.all<Color>(_color),
            elevation: MaterialStateProperty.all<double>(0),
          ),
          onPressed: (){
            if (_color == widget.color) {
            _color = backGroundColor;
            _textColor = textPassiveColor;
            // _cause = _cause.add($_text);
            setState(() {});
          }else{
            _color = widget.color;
            _textColor = backGroundColor;
            setState(() {});}
          },
          child: Center(
            child: Text(
              _text,
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: _textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.72,
              ),
            ),
          ),
        ),
      ),
    );
  }
}