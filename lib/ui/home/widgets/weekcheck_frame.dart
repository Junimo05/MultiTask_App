import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:multitask_fe/constants/contants.dart';
import 'package:multitask_fe/utils/logger.dart';

class WeekcheckFrame extends StatefulWidget {
  const WeekcheckFrame({super.key});

  @override
  State<WeekcheckFrame> createState() => _WeekcheckFrameState();
}

class _WeekcheckFrameState extends State<WeekcheckFrame> {
  final List<String> days = [
    WeekWord.mon,
    WeekWord.tue,
    WeekWord.wed,
    WeekWord.thu,
    WeekWord.fri,
    WeekWord.sat,
    WeekWord.sun
  ];

  int selectedDay = DateTime.now().weekday - 1; //current day

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime startOfWeek = now.subtract(Duration(days: now.weekday - 1));

    return SizedBox(
      height: 100,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          childAspectRatio: 0.75,
        ),
        itemCount: days.length,
        itemBuilder: (context, index) {
          DateTime currentDate = startOfWeek.add(Duration(days: index));
          String formattedDate = DateFormat('dd-MM').format(currentDate);
          bool isSelected = index == selectedDay;

          return InkWell(
            onTap: () {
              setState(() {
                selectedDay = index;
              });
            },
            child: AnimatedContainer(
              height: 100,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeOut,
              margin: EdgeInsets.all(isSelected ? 4.0 : 8.0),
              decoration: BoxDecoration(
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).colorScheme.inverseSurface
                      : Theme.of(context).colorScheme.primary,
                  width: 2,
                ),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.onSecondary,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ]
                    : [],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      days[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? Theme.of(context).colorScheme.onSecondary
                            : Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Text(
                      formattedDate,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected
                            ? Theme.of(context).colorScheme.onSecondary
                            : Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
