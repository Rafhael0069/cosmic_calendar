import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/months_controller.dart';

class MonthViewCustom extends StatefulWidget {
  final int index;

  const MonthViewCustom(this.index, {Key? key}) : super(key: key);

  @override
  State<MonthViewCustom> createState() => _MonthViewCustomState();
}

class _MonthViewCustomState extends State<MonthViewCustom> {
  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<MonthsController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(_controller.months[widget.index]),
      ),
      body: Center(child: Text(_controller.months[widget.index]),),
    );
  }
}
