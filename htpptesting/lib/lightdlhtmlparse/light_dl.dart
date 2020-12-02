import 'package:flutter/material.dart';
import 'package:htpptesting/lightdlhtmlparse/detail_movie.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

import 'list.dart';

class LightDlScreen extends StatefulWidget {
  @override
  _LightDlScreenState createState() => _LightDlScreenState();
}

class _LightDlScreenState extends State<LightDlScreen> {
  List<Job> jobsList = [];
  List<String> myTest = [];
  List<DetailMovie> movieList = [];

  Future<List<String>> getData() async {
    //initialize a new list
    List<String> myList = [];

    //connect to flutter jobs web site
    http.Response response = await http
        .get('https://lightdlmovies.blogspot.com/search/label/MOVIES?m=1');

    //parse and extract the data from the web site
    dom.Document document = parser.parse(response.body);
    document.getElementsByClassName('post').forEach((child) {
      jobsList.add(Job(
          title: child.getElementsByTagName('h3').first.text,
          url: child
              .getElementsByTagName('h3')
              .first
              .getElementsByTagName('a')
              .first
              .attributes["href"],
          images: child
              .getElementsByClassName('post-body')
              .first
              .children
              .first
              .getElementsByTagName('a')
              .first
              .attributes
              .values
              .toList()));
    });

    print("data loaded");
    //just to wait until the get request completed
    return myList;
  }

  Future<List<String>> getMovie() async {
    //initialize a new list
    List<String> myList = [];

    //connect to flutter jobs web site
    http.Response response = await http
        .get('https://lightdlmovies.blogspot.com/2020/11/rialto-2019.html?m=1');

    //parse and extract the data from the web site
    dom.Document document = parser.parse(response.body);
    document.getElementsByClassName('post').forEach((child) {
      movieList.add(DetailMovie(
          title: child
              .getElementsByClassName('post-header')
              .first
              .getElementsByTagName('h1')
              .first
              .text,
          timestamp: child
              .getElementsByClassName('post-header')
              .first
              .getElementsByClassName("post-timestamp")
              .first
              .text,
          about: child
              .getElementsByClassName('post-body')
              .first
              .getElementsByTagName('p')
              .elementAt(2)
              .innerHtml,
          downloadLink1: child
              .getElementsByClassName('post-body')
              .first
              .getElementsByTagName('pre')
              .first
              .children
              .first
              .getElementsByTagName('a')
              .first
              .attributes['href'],
          downloadLink2: child
              .getElementsByClassName('post-body')
              .first
              .getElementsByTagName('pre')
              .first
              .children
              .last
              .getElementsByTagName('a')
              .last
              .attributes['href'],
          geners: child.getElementsByClassName("post-labels").first.text.toString()));
    });

    print("data loaded");
    //just to wait until the get request completed
    return myList;
  }

  @override
  void initState() {
    getMovie();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: movieList.isNotEmpty
          ? movieList.map((item) {
              return Card(
                child: Column(
                  children: [
                    // Container(child: Image.network(item.title)),
                    Container(
                      child: Text(item.title),
                    ),
                    Container(
                      child: Text(item.timestamp),
                    ),
                    Container(
                      child: Text(item.about),
                    )
                  ],
                ),
              );
            }).toList()
          : [Text("Nothing")],
    ));
  }
}

// Future lightdl() async {
//   final response = await http.Client()
//       .get(Uri.parse('https://www.lightdl.xyz/search/ghana?m=1'));
//   var item;

//   var document = parse(response.body);
//   document
//       .getElementsByClassName('widget-content list-label-widget-content')[0]
//       .children[0]
//       .children
//       .forEach((element) {
//        print("${element.children[0].attributes["href"]}");
//   });

//   return item;
// }
