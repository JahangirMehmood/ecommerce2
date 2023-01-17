import 'package:e_commerce2/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  // runApp(DevicePreview(
  //   builder: (context) => const MyApp(),
  //   enabled: true,
  //   tools: const [...DevicePreview.defaultTools],
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
      // home: const SignIn(),
    );
  }
}
