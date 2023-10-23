import 'package:cosmic_calendar/controllers/months_controller.dart';
import 'package:cosmic_calendar/views/calendar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(MultiProvider(
      providers: [Provider<MonthsController>(create: (_) => MonthsController())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(),
        home: Calendar(),
        // home: MonthViewCustom(0),
        // home: MonthWithDays(),

      )));
}
