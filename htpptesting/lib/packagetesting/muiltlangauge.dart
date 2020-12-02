import 'package:flutter/material.dart';
import 'package:htpptesting/packagetesting/exampleTestclass.dart';

class Muilt extends StatefulWidget {
  final String text;

  const Muilt({Key key, this.text}) : super(key: key);

  @override
  _MuiltState createState() => _MuiltState();
}

class _MuiltState extends State<Muilt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TextTranslate(
          "How are you doing today?",
          style: TextStyle(
              fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

// String text(context, text) {
//   var newText;
//   Locale myLocale = Localizations.localeOf(context);
//   GoogleTranslator translator = new GoogleTranslator();
//   translator.translate(text, to: 'fr').then((result) {

//   });

//   return newText;
// }

// class TranslatingText {
//   BuildContext game;
//   var _text;
//   var _data;

//   final GoogleTranslator translator = new GoogleTranslator()
//     ..translate("Hello world", to: 'fr').then((value) {});
//   // Locale myLocale = Localizations.localeOf();

//   TranslatingText(
//     this._text,
//   );

//   String get text => _text;

//   Future apply() async {
//     var translation = await translator
//         .translate(this._text, from: 'fr', to: 'it')
//         .then((value) => this._text = value);

//     _data = translation;

//     print(_data);
//   }

//   TranslatingText.test(context) {}

//   get data => _data;
// }
