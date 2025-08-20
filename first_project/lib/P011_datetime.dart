import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime extends StatelessWidget {
  const MyDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    return Scaffold(
      appBar: AppBar(title: Text('Date Time'), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Text('DateTime : ${dateTime}', style: TextStyle(fontSize: 30)),
                Text('Day : ${dateTime.day}', style: TextStyle(fontSize: 30)),
                Text(
                  'Month : ${dateTime.month}',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'DateTime : ${dateTime.hour} : ${dateTime.minute}',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'Formatted : ${DateFormat('jms').format(dateTime)}',
                  style: TextStyle(fontSize: 30),
                ),

                ElevatedButton(
                  onPressed: () async {
                    DateTime? date = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2026),
                    );
                    if (date != null) {
                      print(
                        'Date : ${date.day} : ${date.month} : ${date.year}',
                      );
                    }
                  },
                  child: Text('Select date', style: TextStyle(fontSize: 30)),
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );

                    if (time != null) {
                      print('Time : ${time.hour} : ${time.minute}');
                    }
                  },
                  child: Text('Select Time', style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
