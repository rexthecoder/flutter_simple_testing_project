// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class QuoteScreen extends StatefulWidget {
//   @override
//   _QuoteScreenState createState() => _QuoteScreenState();
// }

// class _QuoteScreenState extends State<QuoteScreen> {
//    PageController controller = PageController(viewportFraction: 1,);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: FutureBuilder(
//                 // future: userquote(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return Center(
//                         child: Container(
//                             child: PageView(
//                               controller: controller,
//                       children: snapshot.data.map<Widget>((document) {
//                         return new ListTile(
//                           title: new Text(document['text']),
//                           subtitle: new Text(document['author']?? "Unkown"),
//                         );
//                       }).toList(),
//                     )));
//                   } else {
//                     return Center(child: CircularProgressIndicator());
//                   }
//                 },
//               ),
//             ),
//             Center(
//               child: ElevatedButton(
//                   onPressed: () {
//                    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.slowMiddle);
//                   },
//                   child: Text("Next")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Future userquote() async {
// //   final response = await http.get('https://type.fit/api/quotes');
// //   var data = jsonDecode(response.body);

// //   return data;
// // }
