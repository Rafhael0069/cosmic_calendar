import 'package:cosmic_calendar/views/calendar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Calendar"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calendar()));
            },
          ),
        ),
      ),
    );
  }
}
