import 'package:e_commerce2/widget/color_constent.dart';
import 'package:e_commerce2/widget/cus_text.dart';
import 'package:flutter/material.dart';
import '../widget/color_constent.dart';
import 'order_view.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 60),
                    height: MediaQuery.of(context).size.height * 0.67,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                        color: Color(0xffC6AB59),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/dashboard/hero.png'),
                          radius: 60,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Cus_Text(
                            title: 'Sajin', size: 22.0, font: FontWeight.w600),
                        Cus_Text(
                            title: 'sajinTamangUIUX@figma.com',
                            size: 16.0,
                            font: FontWeight.bold),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 20,
                            right: 20,
                          ),
                          color: ColorConstent.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Cus_Text(title: 'Order #CS1020'),
                                  Cus_Text(title: '•  In Progress'),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorConstent.grey),
                                        child: Image.asset(
                                            'assets/dashboard/mike.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Cus_Text(
                                          title: 'Beosound 1',
                                          size: 11.0,
                                          font: FontWeight.w600),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorConstent.grey),
                                        child: Image.asset(
                                            'assets/dashboard/speker1.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Cus_Text(
                                          title: 'Beosound…',
                                          size: 11.0,
                                          font: FontWeight.w600),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: ColorConstent.grey),
                                        child: Image.asset(
                                            'assets/dashboard/headphone.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Cus_Text(
                                          title: 'Beoplay H…',
                                          size: 11.0,
                                          font: FontWeight.w600),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Cus_Text(
                                  title: 'Your order is on its way!',
                                  size: 14.0,
                                  font: FontWeight.bold),
                              const SizedBox(
                                height: 5,
                              ),
                              Cus_Text(
                                  title: 'Orders will arrive in 3 days!',
                                  size: 12.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: ColorConstent.golden,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OrderView()));
                                    },
                                    child: Cus_Text(
                                      title: 'ADD TO CART',
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Image.asset('assets/dashboard/user.png'),
                title: Cus_Text(
                    title: 'My Account', size: 14.0, font: FontWeight.bold),
                subtitle: Cus_Text(
                  title: 'Edit your informations',
                ),
                trailing: const Icon(
                  Icons.arrow_right_alt_sharp,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
