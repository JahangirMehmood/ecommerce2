import 'package:e_commerce2/widget/color_constent.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widget/cus_text.dart';
import 'item_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      {
        'image': 'assets/dashboard/speker.png',
      },
      {
        'image': 'assets/dashboard/speker.png',
      },
      {
        'image': 'assets/dashboard/speker.png',
      },
      {
        'image': 'assets/dashboard/speker.png',
      },
      {
        'image': 'assets/dashboard/speker.png',
      },
      {
        'image': 'assets/dashboard/speker.png',
      },
    ];
    return Scaffold(
      backgroundColor: ColorConstent.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Image.asset('assets/dashboard/drawer.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Cus_Text(
              title: 'Browse by Categories',
              size: 16.00,
              font: FontWeight.bold),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ItemScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [Image.asset(images[index]['image'])],
                        ),
                      ),
                    );
                  })),
          Cus_Text(
              title: 'Recommended for You', size: 16.00, font: FontWeight.bold),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [Image.asset(images[index]['image'])],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: const GNav(
          tabBackgroundColor: Color(0xffC6AB59),
          padding: EdgeInsets.all(12),
          tabs: [
            GButton(
              gap: 5,
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              gap: 5,
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              gap: 5,
              icon: Icons.messenger_outline,
              text: 'Message',
            ),
            GButton(
              gap: 5,
              icon: Icons.supervised_user_circle_outlined,
              text: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
