import 'package:e_commerce2/screens/end.dart';
import 'package:flutter/material.dart';

import '../widget/color_constent.dart';
import '../widget/cus_text.dart';
import 'order_complet.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Cus_Text(
            title: ' ORDER COMPLETED', clr: ColorConstent.black, size: 14.0),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(8),
            onPressed: () {},
            icon: Image.asset(
              'assets/dashboard/dot.png',
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 150, right: 30, left: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstent.pink),
              child: Image.asset('assets/dashboard/sorry1.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Cus_Text(title: 'Order Failed', size: 20.0, font: FontWeight.bold),
            const SizedBox(
              height: 5,
            ),
            Cus_Text(
              title: 'Your payment occurred an error.',
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/dashboard/sorry.png'),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
                title: 'Do not worry 😉', size: 14.0, font: FontWeight.bold),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
              title:
                  'Keep calm, sometimes it happens \nPlease go back and check your payment method/n or contact us',
            ),
            const SizedBox(
              height: 120,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width * 1,
              color: ColorConstent.golden,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.subdirectory_arrow_left,
                    color: Colors.white,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          elevation: 0,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const END()));
                      },
                      child: Cus_Text(
                        title: 'Review Payment Method',
                      )),
                  Container(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstent.light,
                    elevation: 0,
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const OrderComplet()));
                },
                child: Cus_Text(
                  title: '',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
