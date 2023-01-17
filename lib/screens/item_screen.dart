import 'package:e_commerce2/screens/product_screen.dart';
import 'package:e_commerce2/widget/color_constent.dart';
import 'package:e_commerce2/widget/cus_text.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int current = 0;
  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Post",
    "Activity",
    "Setting",
    "Profile",
  ];
  List allItems = [
    {
      'Image': "assets/dashboard/mike.png",
      "tittle": 'Beosound 1',
      'title2': "1,600"
    },
    {
      'Image': "assets/dashboard/dish.png",
      "tittle": 'Beoplay A9',
      'title2': "1,600"
    },
    {
      'Image': "assets/dashboard/mike.png",
      "tittle": 'Beosound 1',
      'title2': "1,600"
    },
    {
      'Image': "assets/dashboard/dish.png",
      "tittle": 'Beoplay A9',
      'title2': "1,600"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstent.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Cus_Text(title: 'Speakers', clr: ColorConstent.black),
        actions: [
          IconButton(
            padding: const EdgeInsets.all(8),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        margin: const EdgeInsets.only(
                            top: 15, right: 20, left: 20, bottom: 5),
                        color: ColorConstent.white,
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Cus_Text(
                                title: 'Gender',
                                size: 16.00,
                                font: FontWeight.bold),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 44,
                                  width: 95,
                                  color: ColorConstent.golden,
                                  child: Center(
                                    child: Cus_Text(title: 'Men'),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  width: 95,
                                  color: ColorConstent.grey,
                                  child: Center(
                                    child: Cus_Text(title: 'Women'),
                                  ),
                                ),
                                Container(
                                  height: 44,
                                  width: 95,
                                  color: ColorConstent.grey,
                                  child: Center(
                                    child: Cus_Text(title: 'Both'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Image.asset('assets/dashboard/pic.png'),
                            const SizedBox(
                              height: 15,
                            ),
                            Cus_Text(
                                title: 'Color',
                                size: 16.00,
                                font: FontWeight.bold),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 44,
                                  width: 44,
                                  color: ColorConstent.golden,
                                ),
                                Container(
                                  height: 44,
                                  width: 44,
                                  color: Colors.red,
                                ),
                                Container(
                                  height: 44,
                                  width: 44,
                                  color: Colors.blue,
                                ),
                                Container(
                                  height: 44,
                                  width: 44,
                                  color: Colors.grey,
                                ),
                                Container(
                                  height: 44,
                                  width: 44,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductScreen()));
                              },
                              child: Container(
                                  height: 44,
                                  width: 144,
                                  color: ColorConstent.golden,
                                  child: Center(
                                    child: Cus_Text(
                                        title: 'APLLY FILTER (4)',
                                        clr: ColorConstent.white,
                                        font: FontWeight.bold,
                                        size: 14.00),
                                  )),
                            )
                          ],
                        ),
                      ));
            },
            icon: Image.asset('assets/dashboard/options.png'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstent.golden,
        onPressed: () {},
        child: const Icon(Icons.email_outlined),
      ),
      body: Column(
        children: [
          Image.asset('assets/dashboard/item.png'),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                      margin: const EdgeInsets.all(8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            current = i;
                          });
                        },
                        child: Text(
                          items[i],
                          style: TextStyle(
                              color: current == i ? Colors.red : Colors.black,
                              fontWeight: current == i
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: current == i ? 16 : 14),
                        ),
                      ));
                }),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: allItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: ColorConstent.grey,
                        elevation: 5,
                        child: Row(
                          children: [
                            Image.asset(allItems[index]['Image']),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Cus_Text(
                                    title: allItems[index]['tittle'],
                                    size: 14.00,
                                    font: FontWeight.bold),
                                Row(
                                  children: [
                                    Cus_Text(title: '4.5', size: 12.00),
                                    Icon(
                                      Icons.star,
                                      color: ColorConstent.golden,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ColorConstent.golden,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ColorConstent.golden,
                                      size: 11,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: ColorConstent.golden,
                                      size: 11,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 11,
                                    ),
                                  ],
                                ),
                                Cus_Text(
                                    title: allItems[index]['title2'],
                                    size: 12.00),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
