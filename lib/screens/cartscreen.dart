import 'package:e_commerce2/screens/shopping_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widget/color_constent.dart';
import '../widget/cus_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 0;
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
        title: Cus_Text(title: ' My Cart', clr: ColorConstent.black),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(8),
            onPressed: () {},
            icon: Image.asset('assets/dashboard/dot.png'),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: ColorConstent.grey,
                  borderRadius: BorderRadius.circular(15)),
              height: 150,
              width: 330,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: ColorConstent.grey,
                elevation: 5,
                child: Row(
                  children: [
                    Image.asset('assets/dashboard/mike.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Cus_Text(
                            title: 'Beosound 1',
                            size: 14.00,
                            font: FontWeight.bold),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Cus_Text(title: 'Color'),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              color: ColorConstent.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Cus_Text(title: 'Size'),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              color: ColorConstent.white,
                              child: Cus_Text(title: '5'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Cus_Text(
                          title: 'Rs:1,600',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: ColorConstent.black,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                padding: const EdgeInsets.all(2),
                                color: ColorConstent.white,
                                child: Center(
                                  child: Cus_Text(title: '$count'),
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: ColorConstent.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              leading: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              title: Text(
                'Shipping',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '2-3 days',
              ),
              trailing: Icon(
                Icons.arrow_downward_rounded,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              leading: Icon(
                Icons.percent,
                color: Colors.black,
              ),
              title: Text(
                'Promo Code',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '- 100.00',
              ),
              trailing: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cus_Text(title: 'Total:', size: 20.0, font: FontWeight.w500),
                Cus_Text(title: '9,800', size: 20.0, font: FontWeight.w500),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstent.golden,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShoppingScreen()));
                },
                child: Cus_Text(
                  title: 'CHECKOUT',
                )),
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GNav(
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
