// import 'package:flutter/material.dart';
//
// Cus_Containner({w, h, clr, br, required child}) {
//   return Container(
//     child: child,
//     width: w,
//     height: h,
//     decoration:
//         BoxDecoration(color: clr, borderRadius: BorderRadius.circular(br)),
//   );
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cus_Containner extends Container {
  Cus_Containner({
    final Key? key,
    this.child,
    this.borderColor,
    this.height,
    this.width,
    // this.shadow = kPrimaryBoxShadow,
    this.color,
    this.alignment,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(12),
      topRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
    this.padding = const EdgeInsets.all(5),
    this.margin = const EdgeInsets.all(5),
    // this.image,
  }) : super(
          key: key,
          child: child,
          height: height,
          width: width,
          padding: padding,
          margin: margin,
          alignment: alignment,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            border:
                Border.all(width: 1, color: borderColor ?? Colors.transparent),
            // boxShadow: shadow,
            borderRadius: borderRadius,
          ),
        );

  @override
  final Widget? child;
  final double? height;
  final double? width;
  @override
  final Color? color;
  final Color? borderColor;
  final BorderRadius borderRadius;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final EdgeInsetsGeometry? margin;
  @override
  final AlignmentGeometry? alignment;
// final Image? image;
}
