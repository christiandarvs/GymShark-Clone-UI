import 'package:flutter/material.dart';
import 'package:fourth_day_study/items.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcdc1ae),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: Text(
                          'CD',
                          style: GoogleFonts.bebasNeue(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Hi, CHRISTIAN',
                        style: GoogleFonts.bebasNeue(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: (() {}), icon: const Icon(Icons.search))
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  CustomItem(
                      imageURL:
                          'https://images.pexels.com/photos/6998744/pexels-photo-6998744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      textLabel: 'ALL-NEW APEX'),
                  CustomItem(
                    imageURL:
                        'https://images.pexels.com/photos/7690200/pexels-photo-7690200.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    textLabel: 'AMATEUR',
                  ),
                  CustomItem(
                    imageURL:
                        'https://images.pexels.com/photos/7674482/pexels-photo-7674482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    textLabel: 'HARDCORE',
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Menu'),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
