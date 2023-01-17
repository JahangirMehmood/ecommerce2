import 'package:flutter/material.dart';

// class CusText extends Text {
//   final String? title;
//   final Color? clr;
//   final double? size;
//   final TextStyle? txtStyle;
//   CusText({Key? key, required this.title, this.size, this.clr, this.txtStyle})
//       : super(title ?? '',
//             key: key,
//             style: txtStyle ??
//                 TextStyle(color: clr ?? Colors.black, fontSize: size ?? 10));
// }
Cus_Text({required title, size, font, clr}) {
  return Text(
    title,
    style: TextStyle(fontSize: size, fontWeight: font, color: clr),
  );
}
