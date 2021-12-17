import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  const TextHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: Dimens.fontSize18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
