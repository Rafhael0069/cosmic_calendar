import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/months_controller.dart';

class MonthWithDaysWidget extends StatefulWidget {
  const MonthWithDaysWidget({Key? key}) : super(key: key);

  @override
  State<MonthWithDaysWidget> createState() => _MonthWithDaysWidgetState();
}

class _MonthWithDaysWidgetState extends State<MonthWithDaysWidget> {

  String? title = 'Titulo';
  String? description = 'Descrição';

  @override
  Widget build(BuildContext context) {

    final _controller = Provider.of<MonthsController>(context);
    Map<String, dynamic> calendar = _controller.getCurrentMonthData();

    title = calendar['dados']['dados']['evento']['titulo'] ;
    description = calendar['dados']['dados']['evento']['descricao'] ;

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text(
              title!,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Container(
            child: Text(
              description!,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
