import 'package:e_commerce2/screens/dashboard_screen.dart';
import 'package:e_commerce2/screens/sign_up.dart';
import 'package:e_commerce2/widget/color_constent.dart';
import 'package:e_commerce2/widget/cus_textfield.dart';
import 'package:flutter/material.dart';
import '../widget/cus_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hidePassword = true;
  bool is_Select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, right: 20, left: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.location_on_outlined),
                const SizedBox(
                  width: 10,
                ),
                Cus_Text(title: 'Perth, Western Australia')
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Cus_Text(
                title: 'Let’s Sign You In', font: FontWeight.bold, size: 26.00),
            Cus_Text(
              title: 'Welcome back, you’ve been missed!',
            ),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
              title: 'Email or Email',
            ),
            Cus_TextField(
              hint: 'Email',
              // pclr1: ColorConstent.golden,
              picon: Icon(
                Icons.email_outlined,
                color: ColorConstent.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
              title: 'Password',
            ),
            Cus_TextField(
              obscure: hidePassword,
              hint: 'Password',
              picon: Icon(
                Icons.lock,
                color: ColorConstent.black,
              ),
              sicon: IconButton(
                color: ColorConstent.black,
                icon: hidePassword
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstent.golden,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Cus_Text(
                      title: 'SIGN IN',
                    ),
                    const Icon(Icons.arrow_forward)
                  ],
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                      children: [
                        TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ]),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstent.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.facebook),
                    Cus_Text(
                      title: 'Connect with Facebook',
                    ),
                    Container(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
