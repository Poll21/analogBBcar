import 'package:flutter/services.dart';

class PhoneInputFormatter extends TextInputFormatter {// 123 456 78 90
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]+'),'');//заменяет все символы кроме цыфр на пустой
// вычисляет количество пробелов в строке до курсора
    final initialSpeshialSimbolCuont = newValue.selection
        .textBefore(newValue.text)//получаем весь текст до позиции курсора
        .replaceAll(RegExp(r'[\d]+'),'')//удаляем все цифры
        .length;//вычисляем длинну получившейся строки
    final cursorPosition =
        newValue.selection.start//позиция курсора в новой строке
            - initialSpeshialSimbolCuont;//количество пробелов до курсора
    var finalCursorPosition = cursorPosition;
    final digitsOnlyChars = digitsOnly.split('');//разбивает строку на отдельные элементы и создает массив

    if (oldValue.selection.textBefore(oldValue.text).endsWith('-') == true) {//если символ равен перед курсором '-'
      digitsOnlyChars.removeAt(cursorPosition - 1);
      finalCursorPosition -= 2;}

    var newString = <String>[];

    for (var i = 0; i < digitsOnlyChars.length; i++){
      if (i == 3 || i == 6 || i == 8){
        newString.add('-');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition){finalCursorPosition += 1;}
      } else {
        newString.add(digitsOnlyChars[i]);
      }
    }

    final resultString = newString.join('');//обеденяет в строку отдельные элементы из массива символов

    return TextEditingValue(
        text: resultString,
        selection: TextSelection.collapsed(offset: finalCursorPosition)
    );
  }
}