import 'package:e_commerce2/screens/sign_in.dart';
import 'package:e_commerce2/widget/color_constent.dart';
import 'package:e_commerce2/widget/cus_textfield.dart';
import 'package:flutter/material.dart';
import '../widget/cus_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                title: 'Getting Started', font: FontWeight.bold, size: 26.00),
            Cus_Text(
              title: 'Create an account to continue!',
            ),
            const SizedBox(
              height: 10,
            ),
            Cus_Text(
              title: 'Email',
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
              title: 'Email',
            ),
            Cus_TextField(
              hint: 'Username',
              picon: Icon(
                Icons.verified_user_outlined,
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
            Row(
              children: [
                Checkbox(
                  value: is_Select,
                  onChanged: (val) {
                    setState(() {
                      is_Select = val!;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Cus_Text(title: "By creating an account, you agree to our"),
                    Cus_Text(
                        title: "Term & Conditions",
                        size: 16.00,
                        font: FontWeight.bold),
                  ],
                )
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorConstent.golden,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Cus_Text(
                      title: 'SIGN UP',
                    ),
                    const Icon(Icons.arrow_forward)
                  ],
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              child: Center(
                child: RichText(
                  text: const TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16),
                      children: [
                        TextSpan(
                            text: "Sign in",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
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
