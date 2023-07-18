// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

// String getMonthString(int month) {
//   String? monthString;
//   switch (month) {
//     case 1:
//       monthString = 'January';
//       break;
//     case 2:
//       monthString = 'February';
//       break;
//     case 3:
//       monthString = 'March';
//       break;
//     case 4:
//       monthString = 'April';
//       break;
//     case 5:
//       monthString = 'Mai';
//       break;
//     case 6:
//       monthString = 'June';
//       break;
//     case 7:
//       monthString = 'July';
//       break;
//     case 8:
//       monthString = 'August';
//       break;
//     case 9:
//       monthString = 'September';
//       break;
//     case 10:
//       monthString = 'Oktober';
//       break;
//     case 11:
//       monthString = 'November';
//       break;
//     case 12:
//       monthString = 'December';
//       break;
//   }
//   return monthString!;
// }

class _DateAppState extends State<DateApp> {
  changeEverySec() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {
          weekDay = DateFormat("EEEE").format(DateTime.now());
          date = DateFormat("yMMMMd").format(DateTime.now());
          timeNow = DateFormat("hh : mm : ss a").format(DateTime.now());

          // year = DateTime.now().year.toString();
          // day = DateTime.now().day.toString();
          // weekDay = DateTime.now().weekday.toString();
          // switch (weekDay) {
          //   case "1":
          //     weekDay = "Monday";
          //     break;
          //   case "2":
          //     weekDay = "Tuesday";
          //     break;
          //   case "3":
          //     weekDay = "Wednesday";
          //     break;
          //   case "4":
          //     weekDay = "Thursday";
          //     break;
          //   case "5":
          //     weekDay = "Friday";
          //     break;
          //   case "6":
          //     weekDay = "Saturday";
          //     break;
          //   case "7":
          //     weekDay = "Sunday";
          //     break;
          // }

          // month = DateTime.now().month.toString();
          // switch (month) {
          //   case "1":
          //     month = 'January';
          //     break;
          //   case "2":
          //     month = 'February';
          //     break;
          //   case "3":
          //     month = 'March';
          //     break;
          //   case "4":
          //     month = 'April';
          //     break;
          //   case "5":
          //     month = 'Mai';
          //     break;
          //   case "6":
          //     month = 'June';
          //     break;
          //   case "7":
          //     month = 'July';
          //     break;
          //   case "8":
          //     month = 'August';
          //     break;
          //   case "9":
          //     month = 'September';
          //     break;
          //   case "10":
          //     month = 'Oktober';
          //     break;
          //   case "11":
          //     month = 'November';
          //     break;
          //   case "12":
          //     month = 'December';
          //     break;
          // }
          // hour = DateTime.now().hour;
          // if (hour > 12) {
          //   hour = hour - 12;
          //   timeH = "pm";
          // } else {
          //   timeH = "am";
          // }
          // minute = DateTime.now().minute.toString().padLeft(2, "0");
          // sec = DateTime.now().second.toString().padLeft(2, "0");
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
  }

  String weekDay = "";
  String date = "";
  String timeNow = "";
  // String timeZone = "am";
  // String timeH = "";
  // String year = "";
  // String day = "";
  // String month = "";

  // int hour = 0;
  // String minute = "";
  // String sec = "";
  // String weekDay = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      appBar: AppBar(
        title: Text(
          "Time & Date App",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 57, 73, 80),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Today's Date is $weekDay",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              timeNow,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
