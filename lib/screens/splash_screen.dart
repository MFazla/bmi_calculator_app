import 'package:bmi_calculator/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("assets/images/Final_logo.png"),
            height: 100,
          ),
          Image(
            image: AssetImage("assets/images/Healthyhabit-bro.png"),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: Text(
              "Go Healthy",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 246, 172, 62),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            ),
          ),
        ],
      ),
    );
  }
}


//change the radius of the button
//change the color of the logo
//learn how to set navigation in flutter (pushReplacement)
//