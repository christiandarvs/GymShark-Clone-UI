import 'package:flutter/material.dart';
import 'package:fourth_day_study/custom_button.dart';
import 'package:fourth_day_study/home.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/6389075/pexels-photo-6389075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=11 '),
                    fit: BoxFit.cover)),
          ),
          Text(
            'GYMSHARK',
            style: GoogleFonts.bebasNeue(
                fontSize: 60, color: Colors.white, letterSpacing: 2),
          ),
          const CustomButton(
            text: 'LOG IN',
            location: 460,
            bgcolor: Colors.white,
            textColor: Colors.black,
          ),
          const CustomButton(
              text: 'CREATE ACCOUNT',
              location: 525,
              bgcolor: Colors.black,
              textColor: Colors.white),
          Positioned(
              top: 600,
              child: TextButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const Home();
                    })));
                  }),
                  child: const Text(
                    'Continue As Guest',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  )))
        ],
      )),
    );
  }
}
