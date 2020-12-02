
import 'package:pal/pal.dart';
import 'package:flutter/material.dart';

import 'new_icons.dart';


class MyApp extends StatelessWidget {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Pal(
      key: _navigatorKey, // give us your navigator key
      editorModeEnabled: true, // this is where we switch from editor mode to client mode
      appToken: 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiZWFjNDFjOC1lNjAwLTQzYjYtOGYzNy1jNzI3NmRkYzU0YjMiLCJ0eXBlIjoiUFJPSkVDVCIsImlhdCI6MTYwNjA3MDYzMn0.bwjPjv44miQt_tZwU0u3uNFeXMRlFDTcL9o-FS7iM1c', // get the token you created on web dashboard
      // --------------------
      // YOUR APP IS HERE
      child: MaterialApp(
        navigatorKey: _navigatorKey, // your navigator key
        navigatorObservers: [PalNavigatorObserver.instance()], // add our navigation observer to your app
        title: 'Flutter Demo',
        home: HomePage()
      ),
      // --------------------
    );
  }  
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}




