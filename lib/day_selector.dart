import 'package:clock_ui/widget/day_time_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:intl/intl.dart';

class DaySelector extends StatefulWidget {
  DaySelector({Key? key}) : super(key: key);

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  bool isSundaySelected = false;
  bool isMondaySelected = false;
  bool isTuesdaySelected = false;
  bool isWednesdaySelected = false;
  bool isThursDaySelected = false;
  bool isFriDaySelected = false;
  bool isSaturDaySelected = false;
  var selectedTime;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    _selectTime(context);
                    // final  picked_s = showTimePicker(
                    //     context: context, initialTime: TimeOfDay.now()) as TimeOfDay ;
                    //     print(picked_s);
                    // if (picked_s != null && picked_s != selectedTime)
                    //   setState(() {
                    //     selectedTime = picked_s ;
                    //   });
                    //   print(selectedTime);
                  },
                  child: Text("click me")),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked_s =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked_s != null && picked_s != selectedTime)
      setState(() {
        selectedTime = picked_s;
        print(selectedTime.toString());
      });

  }
}
