 import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:plantapp/widget/bottom_nav.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Let's plant with us",
            style: TextStyle(
              fontSize: 25.0,
              letterSpacing: 1.7,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Bring nature at home',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              letterSpacing: 1.7,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 400,
            width: 400,
            child: Image.asset('assets/images/Asset1.png'),
          ),
          const SizedBox(
            height: 20.0,
          ),
           GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const BottomNavBar()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 80.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Sing In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Text(
              " Creat an account",
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 16,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
             child: Text(
               " Forgot Password?",
               style: TextStyle(
                 color: Color.fromARGB(255, 243, 6, 6).withOpacity(0.7),
                 letterSpacing: 1,
                 fontWeight: FontWeight.w600,
               ),
             ),
           ),
        ],
      ),
    );
  }
}
