import 'dart:convert';

import 'package:cosmic_calendar/controllers/months_controller.dart';
import 'package:cosmic_calendar/views/month_view_custom.dart';
import 'package:cosmic_calendar/views/widgets/month.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<MonthsController>(context);
    List months = _controller.getMonthsTitle();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: months.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Month(index),
              onTap: () {
                _controller.currentMonthIndex = index;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MonthViewCustom(index)));
              },
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 0, mainAxisSpacing: 0),
        ),
      ),
    );
  }
}
