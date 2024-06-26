import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/calendar.dart';
import 'package:planty/components/monitoring/smart_irrigation_fertigation/weekday.dart';
import 'package:planty/utilities/color.dart';

class IrrigationSchedulePopUp extends StatefulWidget {
  const IrrigationSchedulePopUp({super.key});

  @override
  State<IrrigationSchedulePopUp> createState() =>
      _IrrigationSchedulePopUpState();
}

class _IrrigationSchedulePopUpState extends State<IrrigationSchedulePopUp> {
  DateTime? _selectedDate;
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "Create Irrigation Schedule",
            withBackBtn: true,
          )),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    hintText: "Every Monday",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: focusGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Start",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextFormField(
                  readOnly: true,
                  controller: _dateController,
                  onTap: () async {
                    final selectedDate = await showDialog<DateTime>(
                      context: context,
                      builder: (BuildContext context) {
                        return Calendar(); // Show your custom calendar widget
                      },
                    );
                    if (selectedDate != null) {
                      setState(() {
                        _selectedDate = selectedDate;
                        _dateController.text =
                            DateFormat('yyyy-MM-dd').format(selectedDate);
                      });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Select Date',
                    suffixIcon: Icon(Icons.calendar_today),
                    fillColor: Colors.grey.withOpacity(0.1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  maxLines: null,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 15,
                    ),
                    labelText: "Time",
                    suffixIcon: Icon(Icons.alarm),
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: focusGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Stop irrigation condition",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Stop irrigation after the specified time",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  maxLines: null,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 15,
                    ),
                    labelText: "Duration, min*",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: focusGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.datetime,
                  maxLines: null,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 15,
                    ),
                    labelText: "Repeats*",
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: focusGrey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Repeat on",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    WeekdayChoice(weekday: "S"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "M"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "T"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "W"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "T"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "F"),
                    SizedBox(
                      width: 9,
                    ),
                    WeekdayChoice(weekday: "S"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                  child: const Text(
                    "Create",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
