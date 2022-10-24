// import 'package:first_app/calculator.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MaterialApp(home: Home()));
//
// class Home extends StatelessWidget {
//   final Calculator cal = new Calculator();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Calculator App'),
//           centerTitle: true,
//         ),
//         body: Column(children: <Widget>[
//           //DISPLAY
//           Row(children: [
//             Container(
//                 color: Colors.yellow,
//                 padding: EdgeInsets.all(40.0),
//                 child: Text(cal.getDisplay()))
//           ]),
//
//           //ROW 1: '1 2 3 -'
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("1");
//                   //debugPrint('1 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.cyan,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "1",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("2");
//                   //debugPrint('2 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.red,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "2",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("3");
//                   //debugPrint('3 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "3",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("-");
//                   //debugPrint('- IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.green,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "-",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           //ROW 2: '4 5 6 +'
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("4");
//                   debugPrint('4 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.yellow,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "4",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("5");
//                   debugPrint('5 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "5",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("6");
//                   //debugPrint('6 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.red,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "6",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("+");
//                   //debugPrint('+ IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "+",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           //ROW 3: '7 8 9 /'
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("7");
//                   debugPrint('7 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.cyan,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "7",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("8");
//                   debugPrint('8 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.red,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "8",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("9");
//                   debugPrint('9 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "9",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("/");
//                   debugPrint('/ IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.green,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "/",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//           //ROW 4: '0 C = *'
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("0");
//                   debugPrint('0 IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.yellow,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "0",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("C");
//                   debugPrint('C IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "C",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("=");
//                   debugPrint('= IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.red,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "=",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   cal.calculate("*");
//                   debugPrint('* IS HIT');
//                 },
//                 child: Container(
//                   color: Colors.blue,
//                   padding: EdgeInsets.all(40.0),
//                   child: Text(
//                     "*",
//                     style: TextStyle(
//                       fontSize: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ]));
//   }
// }
//
// // class Test extends StatefulWidget {
// //   const Test({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Test> createState() => _TestState();
// // }
// //
// // class _TestState extends State<Test> {
// //   int counter = 1;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }
