import 'package:flutter/material.dart';

import '../widget/color_constent.dart';
import '../widget/cus_text.dart';
import 'order_complet.dart';

class OrderView extends StatelessWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      {'image': 'assets/dashboard/speker.png', 'name': 'Speker'},
      {'image': 'assets/dashboard/mike.png', 'name': 'Mike'},
      {'image': 'assets/dashboard/headphone.png', 'name': 'Headphone'},
      {'image': 'assets/dashboard/dish.png', 'name': 'Dish'},
      {'image': 'assets/dashboard/dot.png', 'name': 'Dot'},
      {'image': 'assets/dashboard/speker.png', 'name': 'Speker'},
      {'image': 'assets/dashboard/mike.png', 'name': 'Mike'},
      {'image': 'assets/dashboard/headphone.png', 'name': 'Headphone'},
      {'image': 'assets/dashboard/dish.png', 'name': 'Dish'},
      {'image': 'assets/dashboard/dot.png', 'name': 'Dot'},
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
            title: 'Order Review', clr: ColorConstent.black, size: 14.0),
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cus_Text(title: 'Products', font: FontWeight.bold),
                Icon(Icons.arrow_drop_down_circle_outlined)
              ],
            ),
            const SizedBox(
              height: 20,
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
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            Cus_Text(title: 'Shipping'),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Image.asset(
                'assets/dashboard/shape.png',
                color: Colors.black,
              ),
              title: Cus_Text(
                  title: '139 Haystreet,Perth',
                  size: 14.0,
                  font: FontWeight.bold),
              trailing: Container(
                  width: 55,
                  height: 25,
                  decoration: BoxDecoration(
                      color: ColorConstent.golden,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Cus_Text(
                        title: 'Change', size: 12.0, font: FontWeight.w600),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
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
                'Standard',
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
            const SizedBox(
              height: 20,
            ),
            Cus_Text(title: 'Payment'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                tileColor: ColorConstent.black,
                shape: const RoundedRectangleBorder(
                    // side: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                leading: Image.asset(
                  'assets/dashboard/circle.png',
                ),
                title: Cus_Text(
                    title: '* * * *    9000',
                    size: 14.0,
                    font: FontWeight.bold,
                    clr: ColorConstent.white),
                trailing: Container(
                    width: 55,
                    height: 25,
                    decoration: BoxDecoration(
                        color: ColorConstent.golden,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Cus_Text(
                          title: 'Change', size: 12.0, font: FontWeight.w600),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cus_Text(title: 'Shipping'),
                Cus_Text(title: 'Free'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cus_Text(title: 'Total:', font: FontWeight.bold),
                Cus_Text(title: '9,800:', font: FontWeight.bold),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
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
                                builder: (context) => const OrderComplet()));
                      },
                      child: Cus_Text(
                        title: 'Place Order',
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
