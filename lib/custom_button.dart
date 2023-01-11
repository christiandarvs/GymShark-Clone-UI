import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final double? location;
  final Color bgcolor;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.location,
      required this.bgcolor,
      required this.textColor});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.location,
      child: SizedBox(
        width: 320,
        height: 45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: ElevatedButton(
            onPressed: (() {
              _createAccount(context);
            }),
            style: ElevatedButton.styleFrom(backgroundColor: widget.bgcolor),
            child: Text(
              widget.text,
              style: GoogleFonts.bebasNeue(
                  fontSize: 20, color: widget.textColor, letterSpacing: 2),
            ),
          ),
        ),
      ),
    );
  }
}

void _createAccount(BuildContext ctx) {
  bool value = false;
  showBottomSheet(
      context: ctx,
      builder: (ctx) => SafeArea(
            child: SizedBox(
              height: 700,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'First Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter First Name'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Last Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Last Name'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Date of Birth (Optional)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'dd/mm/yyyy'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Email Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Email'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Create Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                            labelText: 'Enter Password'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(value: value, onChanged: ((value) {})),
                          const Flexible(
                            child: Text(
                              'I agree to receive email marketing from Gymshark about our products, sales, events, campaigns, apps, the latest news and much more.',
                              style:
                                  TextStyle(fontSize: 15, letterSpacing: 0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: SizedBox(
                          width: 320,
                          height: 45,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: ElevatedButton(
                              onPressed: (() {
                                Navigator.pop(ctx);
                              }),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              child: Text(
                                'CREATE MY ACCOUNT',
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 20,
                                    color: Colors.white,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already a member?'),
                          TextButton(
                              onPressed: (() {}),
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
}
