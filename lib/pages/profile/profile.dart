import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            alignment:
                Alignment.bottomCenter, // Align the container to the bottom
            height: double.infinity, // Set to the height of the Stack
            width: double.infinity, // Set to the width of the Stack
            child: FractionallySizedBox(
              heightFactor: 2 / 3, // Set the height factor to 2/3
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 222, 237, 249),
                      Color.fromARGB(255, 251, 254, 254),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 80,
            child: Text(
              'My Profile',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 140, // Adjust the position of the circular image as needed
            child: Container(
              width: 140, // Adjust the width of the circular image as needed
              height: 140, // Adjust the height of the circular image as needed
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 245, 249,
                    250), // You can set any color or use an image here
              ),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 80, // Adjust the size of the icon as needed
                  color: Colors.blue, // Adjust the color of the icon as needed
                ),
              ),
            ),
          ),
          const Positioned(
            top: 300, // Adjust the position of the text as needed
            child: Text(
              'John Doe', // Adjust the text as needed
              style: TextStyle(
                fontSize: 20, // Adjust the font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 360, // Adjust the position of the container as needed
            left: 20, // Adjust the left margin of the container as needed
            right: 20, // Adjust the right margin of the container as needed
            child: Container(
              padding: EdgeInsets.all(20), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username: JohnDoe123',
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: johndoe@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Phone no.: 012-3456 7890',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Reset password
          Positioned(
            top: 520, // Adjust the position of the reset password container
            left: 20, // Adjust the left margin of the reset password container
            right:
                20, // Adjust the right margin of the reset password container
            child: Container(
              padding: EdgeInsets.all(20), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Logout
          Positioned(
            top: 610, // Adjust the position of the logout container as needed
            left: 20, // Adjust the left margin of the container as needed
            right: 20, // Adjust the right margin of the container as needed
            child: Container(
              padding: EdgeInsets.all(20), // Adjust padding as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.exit_to_app,
                    size: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
