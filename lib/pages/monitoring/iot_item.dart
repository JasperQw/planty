import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planty/components/common/appbar_with_shadow.dart';
import 'package:planty/components/monitoring/promotion/iot_item_details.dart';
import 'package:planty/components/monitoring/promotion/iot_item_header.dart';
import 'package:planty/components/monitoring/promotion/iot_quotation.dart';

class IOTitem extends StatefulWidget {
  const IOTitem({Key? key}) : super(key: key);

  @override
  State<IOTitem> createState() => _IOTitemState();
}

class _IOTitemState extends State<IOTitem> {
  @override
  Widget build(BuildContext context) {
    //IOT Service
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWithShadow(
            title: "IOT Services",
            withBackBtn: true,
          )),
      body: Container(
        color: const Color.fromARGB(255, 249, 249, 249),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.asset('assets/images/startup_farmer.png',
                    fit: BoxFit.cover), // Replace with your content
              ),
              Container(
                color: const Color.fromARGB(255, 249, 249, 249),
                alignment: AlignmentDirectional.topStart,
                child: const iotItemHeader(),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                color: Color.fromARGB(255, 249, 249, 249),
                child: const iotItemDetails(),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                color: Color.fromARGB(255, 249, 249, 249),
                child: const iotQuotation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
