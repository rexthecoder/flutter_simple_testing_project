import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_data.dart';

class NewIcon extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        body: Container(
          child: GridView.builder(
            itemCount: myIconList.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemBuilder: (context, index) {
              return Container(
                child: IconButton(
                  icon: Icon(myIconList[index]),
                  iconSize: 40.0,
                  color: Colors.blueAccent,
                  onPressed: () {
                  //  Showing Icon name here. 
                    scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text(
                        myIconName[index].toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blueAccent,
                    ));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}