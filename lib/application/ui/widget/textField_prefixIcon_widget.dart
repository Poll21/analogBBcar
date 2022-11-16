import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/generate/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class TextFieldPrefixIcon extends StatelessWidget {
  final String title;
  const TextFieldPrefixIcon({Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 16),
      child: Column(
        children: [
          SizedBox(
            height: 21,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: textActiveColor,
                    )),
                const Text('*',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: errorColor,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const SizedBox(
            height: 42,
            child: TextField(
                cursorColor: borderTextField,
                // controller: nameController,
                style: TextStyle(
                  color: textPassiveColor,
                  fontSize: 14.57,
                  fontFamily: 'Montserrat_Medium',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                  prefixIcon:
                  Icon(UiIcons.geolocation, size: 20),
                  prefixIconColor: textPassiveColor,
                  focusColor: textActiveColor,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: borderTextField, width: 1.04),
                  //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  // ),
                )),
          ),
        ],

      ),
    );
  }
}