import 'package:clock_ui/widget/day_time_ui.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () async {
                  await  showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                        builder: (context, child) {
                          return MediaQuery(
                            data: MediaQuery.of(context)
                                .copyWith(alwaysUse24HourFormat: false),
                            child: daySelctionMethod(),
                              
                            
                          );
                        },
                    );
                  },
                  child: Text("click me")),
            ],
          ),
        ),
      ),
    );
  }

  Widget daySelctionMethod() {
    return Column(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DaySelectorWidget(
                labelText: 'S',
                isDaySelected: isSundaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isSundaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'M',
                isDaySelected: isMondaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isMondaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'T',
                isDaySelected: isTuesdaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isTuesdaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'W',
                isDaySelected: isWednesdaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isWednesdaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'T',
                isDaySelected: isThursDaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isThursDaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'F',
                isDaySelected: isFriDaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isFriDaySelected = value;
                  });
                },
              ),
              DaySelectorWidget(
                labelText: 'S',
                isDaySelected: isSaturDaySelected,
                dayColorChanged: (value) {
                  setState(() {
                    isSaturDaySelected = value;
                  });
                },
              ),
            ]),

            //  showTimePicker(
            //           context: context,
            //           initialTime: TimeOfDay.now(),
            //           builder: (context, child) {
            //             return MediaQuery(
            //               data: MediaQuery.of(context)
            //                   .copyWith(alwaysUse24HourFormat: false),
            //               child: daySelctionMethod(),
            //             );
            //           },
      ],
    );
  }
}
