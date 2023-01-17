import 'package:e_commerce2/widget/cus_text.dart';
import 'package:flutter/material.dart';

import '../widget/color_constent.dart';
import 'cartscreen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.email_outlined, color: ColorConstent.black),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Cus_Text(title: 'Speakers'),
                const SizedBox(
                  height: 5,
                ),
                Cus_Text(title: 'Beosound', size: 20.0, font: FontWeight.bold),
                const SizedBox(
                  height: 5,
                ),
                Cus_Text(title: 'Balance', size: 20.0, font: FontWeight.bold),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Cus_Text(
                      title: 'From',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Cus_Text(
                      title: '1,600',
                      font: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Cus_Text(
                      title: 'Available Colors',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          color: ColorConstent.golden,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                    padding:
                        const EdgeInsets.only(top: 100, right: 35, left: 35),
                    width: MediaQuery.of(context).size.width * 1,
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Column(
                      children: [
                        Cus_Text(
                          title: 'Wireless, smart home speaker',
                          font: FontWeight.w400,
                          size: 20.0,
                        ),
                        Cus_Text(
                          title:
                              'A wireless speaker with a dynamic acoustic \nperformance designed to be positioned up \nagainst the wall on a shelf or side table in your \nhome. Impressive sound compared to its size.',
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 1,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: ColorConstent.golden,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartScreen()));
                              },
                              child: Cus_Text(
                                title: 'ADD TO CART',
                              )),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
              right: 10,
              bottom: 250,
              child: Image.asset(
                'assets/dashboard/base.png',
              ))
        ],
      ),
    );
  }
}
