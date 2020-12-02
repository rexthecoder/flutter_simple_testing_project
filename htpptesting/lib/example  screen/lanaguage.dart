import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
class LanguageTesting extends StatefulWidget {
  @override
  _LanguageTestingState createState() => _LanguageTestingState();
}

class _LanguageTestingState extends State<LanguageTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Hello".i18n),
    );
  }
}