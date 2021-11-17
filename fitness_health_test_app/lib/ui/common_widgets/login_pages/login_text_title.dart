import 'package:fitness_health_test_app/values/dimens.dart';
import 'package:flutter/material.dart';

class LoginTextTitle extends StatelessWidget {
  const LoginTextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: Dimens.fontSize25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
