import 'package:flutter/material.dart';
import 'package:flutter_web_example/data/model/meeting_model.dart';
import 'package:flutter_web_example/ultis.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPicker extends StatefulWidget {
  CalendarPicker({
    Key? key,
  }) : super(key: key);

  @override
  _CalendarPickerState createState() => _CalendarPickerState();
}

class _CalendarPickerState extends State<CalendarPicker> {
  var monthCurrent = DateTime.now().month;
  CalendarController _controller = CalendarController();

  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  TextEditingController _titleController = TextEditingController();

  List<Meeting> meetings = <Meeting>[];
  DateTime? fromDate;
  DateTime? toDate;

  static final List<NewObject> items = <NewObject>[
    NewObject(Colors.green, 'Green'),
    NewObject(Colors.purple, 'Purple'),
    NewObject(Colors.red, 'Red'),
    NewObject(Colors.orange, 'Orange'),
    NewObject(Colors.blue, 'Blue'),
  ];
  NewObject value = items.first;
  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      fromDate!,
      pickDate: pickDate,
      firstDate: pickDate ? fromDate : null,
    );
    if (date == null) return;
    if (date.isAfter(toDate!)) {
      toDate = DateTime(
          date.year, date.month, date.day, toDate!.hour, toDate!.minute);
    }
    setState(() {
      fromDate = date;
    });
  }

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(
      toDate!,
      pickDate: pickDate,
    );
    if (date == null) return;

    setState(() {
      toDate = date;
    });
  }

  Future<DateTime?> pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate ?? DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5),
      );
      if (date == null) return null;
      final time =
          Duration(hours: initialDate.hour, minutes: initialDate.minute);
      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );
      if (timeOfDay == null) return null;
      final date =
          DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);
      return date.add(time);
    }
  }

  Widget _buildDateTimePicker() {
    return Column(
      children: [
        buildHead(
          header: 'FROM',
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: buildDropdownField(
                  text: Utils.toDate(fromDate!),
                  onClicked: () => pickFromDateTime(pickDate: true),
                ),
              ),
              Expanded(
                child: buildDropdownField(
                  text: Utils.toTime(fromDate!),
                  onClicked: () => pickFromDateTime(pickDate: false),
                ),
              )
            ],
          ),
        ),
        buildHead(
          header: 'TO',
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: buildDropdownField(
                  text: Utils.toDate(toDate!),
                  onClicked: () => pickToDateTime(pickDate: true),
                ),
              ),
              Expanded(
                child: buildDropdownField(
                  text: Utils.toTime(toDate!),
                  onClicked: () => pickToDateTime(pickDate: false),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildHead({required String header, required Widget child}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          child,
        ],
      );

  Widget buildDropdownField(
          {required String text, required VoidCallback onClicked}) =>
      ListTile(
        title: Text(text),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  @override
  void initState() {
    //_dataSource = _getCalendarDataSource();

    fromDate = DateTime.now();
    print(fromDate);
    toDate = DateTime.now().add(Duration(hours: 2));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Container(
          width: 500,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                      hintText: 'Add title and time',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      )),
                ),
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: _buildDateTimePicker(),
              ),
              // ListTile(
              //   leading: Icon(Icons.location_city),
              //   title: TextField(
              //     controller: _locationController,
              //     decoration: InputDecoration(
              //         hintText: 'Add location',
              //         border: InputBorder.none,
              //         hintStyle: TextStyle(
              //           fontSize: 14,
              //         )),
              //   ),
              // ),
              // ListTile(
              //   leading: Icon(Icons.description),
              //   title: TextField(
              //     decoration: InputDecoration(
              //         hintText: 'Add description',
              //         border: InputBorder.none,
              //         hintStyle: TextStyle(
              //           fontSize: 14,
              //         )),
              //   ),
              // ),
              ListTile(
                title: DropdownButtonHideUnderline(
                  child: DropdownButton<NewObject>(
                    value: value,
                    items: items
                        .map((item) => DropdownMenuItem<NewObject>(
                              child: Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: item.color,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(item.textColor),
                                ],
                              ),
                              value: item,
                            ))
                        .toList(),
                    onChanged: (value) => setState(() {
                      this.value = value!;
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancle'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('Save'),
          onPressed: () {
            // meetings.add((Meeting(_titleController.text, fromDate!, toDate!,
            //     Color(0xFF0F8644), false)));

            Navigator.pop(
                context,
                Meeting(_titleController.text, fromDate!, toDate!, value.color,
                    false));
          },
        ),
      ],
    );
  }
}

class NewObject {
  final Color color;
  final String textColor;
  NewObject(this.color, this.textColor);
}
