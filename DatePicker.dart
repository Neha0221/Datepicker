import 'package:flutter/material.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<datepicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);

                    if (pickedTime != null) {
                      print(
                          'Time selected:${pickedTime.hour}:${pickedTime.minute}');
                    }
                  },
                  child: Text('Select Time')),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2024));

                    if (datePicked != null) {
                      print(
                          'Date selected:${datePicked.day}-${datePicked.month}-${datePicked.year}');
                    }
                  },
                  child: Text('Show'))
            ],
          ),
        ));
  }
}
