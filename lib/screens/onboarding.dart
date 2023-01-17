// import 'package:e_commerce2/widget/color_constent.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class Onboarding extends StatefulWidget {
//   const Onboarding({Key? key}) : super(key: key);
//
//   @override
//   State<Onboarding> createState() => _OnboardingState();
// }
//
// class _OnboardingState extends State<Onboarding> {
//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//     onChange(int index) {
//       setState(() {
//         currentIndex = index;
//       });
//     }
//
//     PageController pageController = PageController();
//     List images = [
//       {
//         'image': 'assets/onboarding/onboarding.png',
//         'title': 'Welcome to STStore !',
//         "description": "With long experience in the audio industry,"
//             " we create the best quality products"
//       },
//       {
//         'image': 'assets/onboarding/onboarding.png',
//         'title': 'Welcome to STStore !',
//         "description": "With long experience in the audio industry,"
//             " we create the best quality products"
//       },
//       {
//         'image': 'assets/onboarding/onboarding.png',
//         'title': 'Welcome to STStore !',
//         "description": "With long experience in the audio industry,"
//             " we create the best quality products"
//       },
//     ];
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             controller: pageController,
//             onPageChanged: onChange,
//             itemCount: images.length,
//             itemBuilder: (context, i) {
//               return Column(
//                 children: [
//                   Container(
//                       height: 300, child: Image.asset(images[i]['image'])),
//                   Text(
//                     images[i]['title'],
//                     style: const TextStyle(
//                         fontSize: 25, fontWeight: FontWeight.bold),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 60, right: 60, top: 15),
//                     child: Text(images[i]['description']),
//                   ),
//                 ],
//               );
//             },
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               (currentIndex == (images.length - 1))
//                   ? ElevatedButton(
//                       style: ElevatedButton.styleFrom(primary: Colors.black),
//                       onPressed: () {},
//                       child: Text(
//                         'Con',
//                         style: TextStyle(color: Colors.teal),
//                       ))
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List<widget>.generate(length, (index) => null))
//               // ? Padding(
//               //     padding: const EdgeInsets.only(
//               //         bottom: 100, right: 20, left: 20),
//               //     child: GestureDetector(
//               //       child: Container(
//               //         height: 50,
//               //         decoration: BoxDecoration(
//               //             borderRadius: BorderRadius.circular(10),
//               //             color: ColorConstent.golden),
//               //         child: Row(
//               //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //           children: [
//               //             Container(),
//               //             const Text(
//               //               'GET STARTED',
//               //               style: TextStyle(
//               //                   color: Colors.black,
//               //                   fontWeight: FontWeight.bold,
//               //                   fontSize: 18),
//               //             ),
//               //             const Padding(
//               //               padding: EdgeInsets.only(right: 10),
//               //               child: Icon(
//               //                 Icons.arrow_forward_rounded,
//               //                 color: Colors.white,
//               //                 size: 30,
//               //               ),
//               //             )
//               //           ],
//               //         ),
//               //       ),
//               //     ),
//               //   )
//               // : Padding(
//               //     padding: const EdgeInsets.only(bottom: 50),
//               //     child: Row(
//               //         mainAxisAlignment: MainAxisAlignment.center,
//               //         children: List.generate(
//               //             images.length,
//               //             (index) => AnimatedContainer(
//               //                   duration: Duration(
//               //                     seconds: 2,
//               //                   ),
//               //                   height: 10,
//               //                   width: index == currentIndex ? 20 : 10,
//               //                   margin: const EdgeInsets.symmetric(
//               //                       horizontal: 5),
//               //                   decoration: BoxDecoration(
//               //                       borderRadius: BorderRadius.circular(5),
//               //                       color: (index == currentIndex
//               //                           ? ColorConstent.golden
//               //                           : ColorConstent.golden)),
//               //                 ))),
//               //   )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:e_commerce2/screens/sign_in.dart';
import 'package:flutter/material.dart';

import '../widget/color_constent.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List images = [
    {
      'image': 'assets/onboarding/onboarding.png',
      'title': 'Welcome to STStore !',
      "description": "With long experience in the audio industry,"
          " we create the best quality products"
    },
    {
      'image': 'assets/onboarding/onboarding.png',
      'title': 'Welcome to STStore !',
      "description": "With long experience in the audio industry,"
          " we create the best quality products"
    },
    {
      'image': 'assets/onboarding/onboarding.png',
      'title': 'Welcome to STStore !',
      "description": "With long experience in the audio industry,"
          " we create the best quality products"
    },
  ];

  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: images.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Image.asset(
                      images[i]['image'],
                    ),
                    Text(
                      images[i]['title'],
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      images[i]['description'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                images.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstent.golden,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              child: Text(
                  currentIndex == images.length - 1 ? 'GET STARTED' : "Next"),
              onPressed: () {
                if (currentIndex == images.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SignIn(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? ColorConstent.golden : Colors.grey,
      ),
    );
  }
}
