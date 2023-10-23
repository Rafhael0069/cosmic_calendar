import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/months_controller.dart';

class Month extends StatelessWidget {
  final int index;

  const Month(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MonthsController>(context);
    List<Map<String, dynamic>> calendar = controller.getCalendar();

    String month = calendar[index]['month'];

    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
            child: Text(
              month,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
