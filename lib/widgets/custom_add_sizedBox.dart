
import 'package:flutter/material.dart';

class CustomAddSizedBox extends StatelessWidget {
  double height;

  CustomAddSizedBox(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}