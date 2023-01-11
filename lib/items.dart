import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItem extends StatelessWidget {
  final String imageURL;
  final String textLabel;
  const CustomItem(
      {super.key, required this.imageURL, required this.textLabel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(imageURL),
            ),
          ),
          Positioned(
            bottom: 35,
            child: Row(
              children: [
                Text(
                  textLabel,
                  style:
                      GoogleFonts.bebasNeue(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(50, 50),
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
