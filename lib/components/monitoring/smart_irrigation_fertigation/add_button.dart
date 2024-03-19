import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planty/pages/monitoring/irrigation_schedule_popup.dart';
import 'package:planty/utilities/color.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const IrrigationSchedulePopUp(),
          ),
        );
      },
      child:Container(
        height: 35,
        width: 80,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              "assets/images/add.svg",
              width: 20,
              height:20
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              "Add",
              style:TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            )
          ],
        ),
      )
    );
  }
}