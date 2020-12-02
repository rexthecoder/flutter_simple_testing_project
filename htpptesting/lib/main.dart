import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:htpptesting/testing%20custom/slider.dart';

import 'testing custom/worm_effect.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  PageController controller = PageController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      title: "Flutter Localization",
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [Locale("en", "US"), Locale("pt", "BR")],
      color: const Color(0xFFFF0000),
      home: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: PageView(
                controller: controller,
                children: List.generate(
                    6,
                    (_) => Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          child: Container(height: 280),
                        )),
              ),
            ),
            
            SmoothPageIndicator(
              controller: controller,
              count: 6,

              effect: WormEffect(),
            ),
          ],
        ),
      )),
    );
  }
}
