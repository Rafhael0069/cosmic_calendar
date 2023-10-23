import 'package:cosmic_calendar/views/widgets/hour_widget.dart';
import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final String day;
  final List hours;

  const DayWidget(this.day, this.hours, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(fontSize: 20),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: hours.length,
          itemBuilder: (context, index) {
            return HourWidget(hours[index]["hour"], hours[index]["event"]["title"],
                hours[index]["event"]["description"]);
          },
        ),
      ],
    );
  }
}