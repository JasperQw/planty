import 'package:flutter/material.dart';

class iotQuotation extends StatefulWidget {
  const iotQuotation({Key? key}) : super(key: key);

  @override
  State<iotQuotation> createState() => _iotQuotationState();
}

class _iotQuotationState extends State<iotQuotation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(
              left: 20.0, top: 20.0, right: 20.0, bottom: 10.0),
          child: const Text(
            'Get yours now!',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(
              left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
          child: Column(
            children: [
              //name
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  hintText: "Enter your Name",
                  hintStyle: const TextStyle(color: Colors.blue),
                  filled: true,
                  fillColor: Colors.blue[50],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //email
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.lightGreen,
                  ),
                  hintText: "Enter your Email",
                  hintStyle: const TextStyle(color: Colors.lightGreen),
                  filled: true,
                  fillColor: Colors.lightGreen[50],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(5.5),
                  ),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  hintText: "Enter your Phone Number",
                  hintStyle: const TextStyle(color: Colors.purple),
                  filled: true,
                  fillColor: Colors.purple[50],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Color.fromARGB(255, 249, 249, 249),
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.only(
              left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Make Quotation Now',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
