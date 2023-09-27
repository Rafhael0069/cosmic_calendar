import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/months_controller.dart';

class Month extends StatelessWidget {
  final int index;

  const Month(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<MonthsController>(context);

    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: SizedBox(
            width: 185,
            height: 185,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(_controller.months[index]),
            ),
          ),
        ),
    );
    // return Center(child: Container(child: Center(child: Text(_controller.months[index])),color: Colors.blue,));
  }
}
