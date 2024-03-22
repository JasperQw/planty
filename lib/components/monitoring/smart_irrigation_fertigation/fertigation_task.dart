import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FertigationTask extends StatelessWidget {
  const FertigationTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Fertigation Task",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/Time_duotone.svg",
                width: 20, height: 20
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Real time update",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Table(
            children: const[
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey, // Specify the color of the horizontal line
                      width: 1.0, // Specify the width of the horizontal line
                      style: BorderStyle.solid, 
                    )
                  )
                ),
                children: [
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 10.0
                    ),
                    child: Center(
                      child:Text(  
                        'Name',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ),
                    ) // Cell 1
                  ),
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 10.0
                      ),
                      child: Center(
                        child:Text(  
                        'Time',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ),  // Cell 2
                    ),
                  ),
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 10.0
                      ),
                      child: Center(  
                        child:Text('Amount',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      )
                    )
                  ),
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                      vertical: 10.0
                    ),
                    child: Center(
                      child:Text(  
                        'Progress',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ),
                    ) // Cell 1
                  ),
                ],
                
           // Cell 3
                ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('Morning',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('9.00 am',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('100g',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('Done',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                ]
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('Evening',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('7.00 pm',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('100g',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                TableCell(
                    child: Padding(padding: EdgeInsets.symmetric(
                        vertical: 10.0
                    ),
                    child: Center(  
                      child:Text('Done',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    )
                    ) // Cell 1
                ),
                ]
              )
            ],
            )
          ),
          const SizedBox(
            height: 10,
          )
        ],
      )
    );
  }
}