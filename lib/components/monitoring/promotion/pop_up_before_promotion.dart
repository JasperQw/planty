import 'package:flutter/material.dart';
import 'package:planty/components/monitoring/promotion/pop_up_before_promotion2.dart';

class PopUpBeforePromotion extends StatelessWidget {
  final VoidCallback onClose;

  const PopUpBeforePromotion({
    Key? key,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.info, size: 30),
                    SizedBox(width: 8),
                    Text(
                      'Why IOT?',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Image.asset('assets/images/whyIOT.png'),
                const SizedBox(height: 16),
                const Text(
                  'Transform your agriculture into an efficient, sustainable & intelligent operation',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 16),
                Container(
                  color: const Color.fromARGB(255, 244, 249, 211),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        _buildInfoRow(Icons.agriculture_rounded,
                            'Step into the future of farming with IoT technology at your fingertips'),
                        _buildInfoRow(Icons.monitor,
                            'Monitor soil moisture, crop health, and more in real-time.'),
                        _buildInfoRow(Icons.query_stats_rounded,
                            'Make precise decisions on irrigation, fertilization, and pest control to optimize resources and maximize yields.'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const PopUpBeforePromotion2();
                        },
                      );
                    },
                    child: Text(
                      'Looks Cool!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 50),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
