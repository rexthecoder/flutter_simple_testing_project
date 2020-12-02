import 'package:flutter/services.dart';

/// Transform all your textInput to Uppercase
///
/// [UppercaseTextInput] extend formatter to utilize it compontents
/// it take the text of the user and convert it to uppercase and send it back to the [TextField]
class UpperCaseTextInput extends TextInputFormatter {
  // Overriding the class [TextInputFormatter] methods
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}
