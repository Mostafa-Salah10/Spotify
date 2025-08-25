import 'package:flutter/material.dart';

class CustomDescriptionText extends StatelessWidget {
  const CustomDescriptionText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
