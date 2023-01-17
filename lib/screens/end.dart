import 'package:flutter/material.dart';

class END extends StatelessWidget {
  const END({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: Image.asset('assets/dashboard/end.jpg'),
      ),
    );
  }
}
