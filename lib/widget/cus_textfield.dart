import 'package:e_commerce2/widget/color_constent.dart';
import 'package:flutter/material.dart';

Cus_TextField({border, required hint, picon, sicon, bool obscure = true}) {
  return TextField(
    obscureText: obscure,
    decoration: InputDecoration(
      border: border,
      hintText: hint,
      prefixIcon: picon,
      suffixIcon: sicon,
    ),
  );
}
