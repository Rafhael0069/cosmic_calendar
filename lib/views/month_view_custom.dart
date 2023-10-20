import 'package:cosmic_calendar/views/calendar.dart';
import 'package:cosmic_calendar/views/widgets/day_widget.dart';
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
    final controller = Provider.of<MonthsController>(context);
    controller.currentMonthIndex = _index;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromRGBO(121, 115, 120, 0.2),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey.shade600,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    controller.currentMonthIndex = _index--;
                    _pageController.previousPage(
                        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
                  },
                ),
                Observer(builder: (_) {
                  return Text(
                    controller.currentMonthData['mes'],
                    style: const TextStyle(fontSize: 24, color: Colors.black),
                  );
                }),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade600,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    controller.currentMonthIndex = _index++;
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 600,
            child: PageView.builder(
              controller: _pageController,
              itemCount: controller.getCalendar().length,
              itemBuilder: (context, indexMes) {
                controller.currentMonthIndex = indexMes;
                var dias = controller.getDias();
                return ListView.builder(
                  itemCount: dias.length,
                  itemBuilder: (context, indexDia) {
                    List horas = controller.getHoras(dias[indexDia]);
                    // return Day();
                    return Column(
                      children: [
                        Text(dias[indexDia]["dia"]),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: horas.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Text(horas[index]["hora"]),
                              ],
                            );
                          },
                        ),
                      ],
                    );
                  },
                );
                // return Center(
                //   child: Column(
                //     children: [
                //       Text(
                //         "${controller.getCurrentMonthData()['dados']['dados']['evento']['titulo']}",
                //         style: const TextStyle(fontSize: 24),
                //       ),
                //       Text(
                //         "${controller.getCurrentMonthData()['dados']['dados']['evento']['descricao']}",
                //         style: const TextStyle(fontSize: 20),
                //       ),
                //     ],
                //   ),
                // );
                // return MonthWithDaysWidget();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => const Calendar()));
        },
        child: const Icon(
          Icons.calendar_month,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
