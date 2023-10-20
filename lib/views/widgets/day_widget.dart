import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/months_controller.dart';

class Day extends StatelessWidget {

  const Day( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

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
          width: MediaQuery.of(context).size.width - 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dia 01',
                  style: TextStyle(fontSize: 20,),
                ),
                Text(
                  '01:00',
                  style: TextStyle(fontSize: 14,),
                ),
                Text(
                  '12:00',
                  style: TextStyle(fontSize: 14,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return Center(child: Container(child: Center(child: Text(_controller.months[index])),color: Colors.blue,));
  }
}
