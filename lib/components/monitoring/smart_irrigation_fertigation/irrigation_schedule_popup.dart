import 'package:flutter/material.dart';

class IrrigationSchedulePopUp extends StatefulWidget {
  const IrrigationSchedulePopUp({super.key});

  @override
  State<IrrigationSchedulePopUp> createState() => _IrrigationSchedulePopUpState();
}

class _IrrigationSchedulePopUpState extends State<IrrigationSchedulePopUp> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child:Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Create Irrigation Schedule", 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Name",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
            )
            
          ],
        ),
      )
    );
  }
}