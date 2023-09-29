import 'package:cosmic_calendar/views/widgets/month_with_days_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../controllers/months_controller.dart';

class MonthViewCustom extends StatefulWidget {
  final int index;

  const MonthViewCustom(this.index, {Key? key}) : super(key: key);

  @override
  State<MonthViewCustom> createState() => _MonthViewCustomState();
}

class _MonthViewCustomState extends State<MonthViewCustom> {
  late int _index;
  late PageController _pageController;

  @override
  void initState() {
    _index = widget.index;
    _pageController = PageController(initialPage: _index);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Provider.of<MonthsController>(context);
    _controller.currentMonthIndex = _index;

    Map<String, dynamic> calendar = _controller.getCurrentMonthData();

    String monthTitle = calendar['mes'];
    // var day = calendar['dados'];
    // String dayTitle = day['dia'];
    // var event = day['dados']['evento'];
    // String eventTitle = event['titulo'];
    // String eventDescription = event['descricao'];

    // return MonthWithDays();

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(121, 115, 120, 0.2),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey.shade600,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    _controller.currentMonthIndex = _index--;
                    _pageController.previousPage(
                        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                  },
                ),
                Observer(builder: (_) {
                  return Text(
                    _controller.currentMonthData['mes'],
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  );
                }),
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade600,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    _controller.currentMonthIndex = _index++;
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 600,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _controller.getCalendar().length,
              itemBuilder: (context, index) {
                _controller.currentMonthIndex = index;
                return Container(
                  child: Center(
                    child: Column(children: [
                      Text(
                        "${_controller.getCurrentMonthData()['dados']['dados']['evento']['titulo']}", style: TextStyle(fontSize: 24),),
                      Text(
                        "${_controller.getCurrentMonthData()['dados']['dados']['evento']['descricao']}", style: TextStyle(fontSize: 20),),
                    ],),
                  ),
                );
                // return MonthWithDaysWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
