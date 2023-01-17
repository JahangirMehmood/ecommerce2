import 'package:e_commerce2/widget/cus_text.dart';
import 'package:flutter/material.dart';

import '../widget/color_constent.dart';
import 'order_complete.dart';

class OrderComplet extends StatelessWidget {
  const OrderComplet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      {'image': 'assets/dashboard/speker.png', 'name': 'Speker'},
      {'image': 'assets/dashboard/mike.png', 'name': 'Mike'},
      {'image': 'assets/dashboard/headphone.png', 'name': 'Headphone'},
      {'image': 'assets/dashboard/dish.png', 'name': 'Dish'},
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Cus_Text(
            title: 'ORDER COMPLETED', clr: ColorConstent.black, size: 14.0),
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
                  color: ColorConstent.golden),
              child: Image.asset('assets/dashboard/shape1.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Cus_Text(
                title: 'Payment Successful!',
                size: 20.0,
                font: FontWeight.bold),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
              title: 'Orders will arrive in 3 days!',
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorConstent.grey),
                        child: Image.asset(images[index]['image']),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Cus_Text(title: images[index]['name'])
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width * 1,
              color: ColorConstent.golden,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
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
                                builder: (context) => const OrderCompleted()));
                      },
                      child: Cus_Text(
                        title: 'See order details',
                      )),
                  const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
