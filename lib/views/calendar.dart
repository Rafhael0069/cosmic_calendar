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
    final controller = Provider.of<MonthsController>(context);
    List months = controller.getMonthsTitle();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: months.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Month(index),
                onTap: () {
                  controller.currentMonthIndex = index;
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MonthViewCustom(index)));
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
